###### Class ads_mobile_sdk.b93 (ads_mobile_sdk.b93)
.class public final Lads_mobile_sdk/b93;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/tx;

.field public final c:Lads_mobile_sdk/pn;

.field public final d:Lads_mobile_sdk/f0;

.field public final e:Lads_mobile_sdk/rv1;

.field public final f:Lkotlinx/coroutines/CoroutineScope;

.field public final g:Lads_mobile_sdk/g83;

.field public final h:Lads_mobile_sdk/hf;

.field public final i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final j:Lads_mobile_sdk/m13;

.field public final k:J

.field public final l:J

.field public final m:Lkotlinx/coroutines/sync/Mutex;

.field public final n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Landroid/content/Context;Lads_mobile_sdk/tx;Lads_mobile_sdk/pn;Lads_mobile_sdk/f0;Lads_mobile_sdk/rv1;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/hf;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/m13;)V
    .registers 13

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdapterProxyFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterInitializer"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recursiveAdData"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lads_mobile_sdk/b93;->a:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lads_mobile_sdk/b93;->b:Lads_mobile_sdk/tx;

    .line 54
    iput-object p4, p0, Lads_mobile_sdk/b93;->c:Lads_mobile_sdk/pn;

    .line 55
    iput-object p5, p0, Lads_mobile_sdk/b93;->d:Lads_mobile_sdk/f0;

    .line 56
    iput-object p6, p0, Lads_mobile_sdk/b93;->e:Lads_mobile_sdk/rv1;

    .line 57
    iput-object p7, p0, Lads_mobile_sdk/b93;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 58
    iput-object p8, p0, Lads_mobile_sdk/b93;->g:Lads_mobile_sdk/g83;

    .line 59
    iput-object p9, p0, Lads_mobile_sdk/b93;->h:Lads_mobile_sdk/hf;

    .line 60
    iput-object p10, p0, Lads_mobile_sdk/b93;->i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 61
    iput-object p11, p0, Lads_mobile_sdk/b93;->j:Lads_mobile_sdk/m13;

    .line 65
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->B0()J

    move-result-wide p2

    iput-wide p2, p0, Lads_mobile_sdk/b93;->k:J

    .line 73
    sget-object p2, Lads_mobile_sdk/kj3;->e:Lads_mobile_sdk/kj3;

    invoke-virtual {p2}, Lads_mobile_sdk/kj3;->d()J

    move-result-wide p2

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->C0()D

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/b93;->l:J

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 75
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/b93;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/b93;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 28

    move-object/from16 v4, p0

    move-object/from16 v0, p6

    .line 399
    instance-of v1, v0, Lads_mobile_sdk/y83;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Lads_mobile_sdk/y83;

    iget v2, v1, Lads_mobile_sdk/y83;->f:I

    const/high16 v3, -0x80000000

    and-int v5, v2, v3

    if-eqz v5, :cond_18

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/y83;->f:I

    :goto_16
    move-object v8, v1

    goto :goto_1e

    :cond_18
    new-instance v1, Lads_mobile_sdk/y83;

    invoke-direct {v1, v4, v0}, Lads_mobile_sdk/y83;-><init>(Lads_mobile_sdk/b93;Lkotlin/coroutines/Continuation;)V

    goto :goto_16

    :goto_1e
    iget-object v0, v8, Lads_mobile_sdk/y83;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 400
    iget v1, v8, Lads_mobile_sdk/y83;->f:I

    const/4 v10, 0x0

    const-string v11, "exception"

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eqz v1, :cond_58

    if-eq v1, v12, :cond_47

    if-ne v1, v13, :cond_3f

    iget-object v1, v8, Lads_mobile_sdk/y83;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/m83;

    iget-object v3, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto/16 :goto_ef

    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    iget-object v1, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;

    :try_start_4d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_50
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_4d .. :try_end_50} :catch_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_81

    :catch_51
    move-exception v0

    move-object v15, v1

    goto :goto_96

    :catch_54
    move-exception v0

    move-object v15, v1

    goto/16 :goto_ba

    :cond_58
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 409
    :try_start_5b
    iget-wide v0, v4, Lads_mobile_sdk/b93;->k:J

    move-wide v1, v0

    new-instance v0, Lads_mobile_sdk/z83;
    :try_end_60
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_5b .. :try_end_60} :catch_92
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_8e

    const/4 v7, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide v14, v1

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    :try_start_6c
    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/z83;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lads_mobile_sdk/b93;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    :try_end_6f
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_6c .. :try_end_6f} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_86

    :try_start_6f
    iput-object v4, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;
    :try_end_71
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_6f .. :try_end_71} :catch_92
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_71} :catch_8e

    move-object/from16 v5, p4

    :try_start_73
    iput-object v5, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    iput v12, v8, Lads_mobile_sdk/y83;->f:I

    invoke-static {v14, v15, v0, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7b
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_73 .. :try_end_7b} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7b} :catch_86

    if-ne v0, v9, :cond_7f

    goto/16 :goto_ee

    :cond_7f
    move-object v2, v4

    move-object v1, v5

    :goto_81
    :try_start_81
    check-cast v0, Lads_mobile_sdk/m83;
    :try_end_83
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_81 .. :try_end_83} :catch_54
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_83} :catch_51

    move-object v3, v2

    move-object v2, v0

    goto :goto_dd

    :catch_86
    move-exception v0

    :goto_87
    move-object v2, v4

    move-object v15, v5

    goto :goto_96

    :catch_8a
    move-exception v0

    :goto_8b
    move-object v2, v4

    move-object v15, v5

    goto :goto_ba

    :catch_8e
    move-exception v0

    move-object/from16 v5, p4

    goto :goto_87

    :catch_92
    move-exception v0

    move-object/from16 v5, p4

    goto :goto_8b

    .line 410
    :goto_96
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v10, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 415
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 416
    new-instance v14, Lads_mobile_sdk/m83;

    .line 419
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x4e

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 420
    const-string v18, "Adapter internal error."

    invoke-direct/range {v14 .. v20}, Lads_mobile_sdk/m83;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    :goto_b7
    move-object v3, v2

    move-object v2, v14

    goto :goto_dd

    .line 421
    :goto_ba
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 425
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    iput-boolean v10, v3, Lads_mobile_sdk/uj2;->m:Z

    .line 426
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 427
    new-instance v14, Lads_mobile_sdk/m83;

    const/4 v0, 0x3

    .line 430
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x4e

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 431
    const-string v18, "Adapter timed out."

    invoke-direct/range {v14 .. v20}, Lads_mobile_sdk/m83;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_b7

    .line 445
    :goto_dd
    iget-object v1, v3, Lads_mobile_sdk/b93;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 586
    iput-object v3, v8, Lads_mobile_sdk/y83;->a:Lads_mobile_sdk/b93;

    iput-object v2, v8, Lads_mobile_sdk/y83;->b:Ljava/lang/Object;

    iput-object v1, v8, Lads_mobile_sdk/y83;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v13, v8, Lads_mobile_sdk/y83;->f:I

    const/4 v5, 0x0

    invoke-interface {v1, v5, v8}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_ef

    :goto_ee
    return-object v9

    .line 587
    :cond_ef
    :goto_ef
    :try_start_ef
    iget-object v0, v3, Lads_mobile_sdk/b93;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_fa

    .line 732
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 733
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_fa
    move-exception v0

    .line 877
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p4

    .line 1
    instance-of v2, v0, Lads_mobile_sdk/v83;

    if-eqz v2, :cond_16

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/v83;

    iget v3, v2, Lads_mobile_sdk/v83;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_16

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/v83;->e:I

    :goto_14
    move-object v6, v2

    goto :goto_1c

    :cond_16
    new-instance v2, Lads_mobile_sdk/v83;

    invoke-direct {v2, p0, v0}, Lads_mobile_sdk/v83;-><init>(Lads_mobile_sdk/b93;Lkotlin/coroutines/Continuation;)V

    goto :goto_14

    :goto_1c
    iget-object v0, v6, Lads_mobile_sdk/v83;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 111
    iget v2, v6, Lads_mobile_sdk/v83;->e:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_43

    if-eq v2, v9, :cond_3d

    if-ne v2, v8, :cond_35

    iget-object v2, v6, Lads_mobile_sdk/v83;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v2, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_43
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    sget-object v11, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-wide v12, p0, Lads_mobile_sdk/b93;->l:J

    new-instance v0, Lads_mobile_sdk/x83;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/x83;-><init>(Lads_mobile_sdk/b93;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    iput v9, v6, Lads_mobile_sdk/v83;->e:I

    invoke-virtual {v11, v12, v13, v0, v6}, Lads_mobile_sdk/m21;->a(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_61

    goto :goto_70

    :cond_61
    move-object v2, p0

    .line 142
    :goto_62
    iget-object v0, v2, Lads_mobile_sdk/b93;->m:Lkotlinx/coroutines/sync/Mutex;

    .line 268
    iput-object v2, v6, Lads_mobile_sdk/v83;->a:Lads_mobile_sdk/b93;

    iput-object v0, v6, Lads_mobile_sdk/v83;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v6, Lads_mobile_sdk/v83;->e:I

    invoke-interface {v0, v10, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_71

    :goto_70
    return-object v7

    :cond_71
    move-object v3, v2

    move-object v2, v0

    .line 269
    :goto_73
    :try_start_73
    iget-object v0, v3, Lads_mobile_sdk/b93;->n:Ljava/util/ArrayList;
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_79

    .line 398
    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_79
    move-exception v0

    invoke-interface {v2, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Ljava/util/Map$Entry;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Map;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 878
    instance-of v7, v6, Lads_mobile_sdk/a93;

    if-eqz v7, :cond_22

    move-object v7, v6

    check-cast v7, Lads_mobile_sdk/a93;

    iget v8, v7, Lads_mobile_sdk/a93;->k:I

    const/high16 v9, -0x80000000

    and-int v10, v8, v9

    if-eqz v10, :cond_22

    sub-int/2addr v8, v9

    iput v8, v7, Lads_mobile_sdk/a93;->k:I

    :goto_20
    move-object v14, v7

    goto :goto_28

    :cond_22
    new-instance v7, Lads_mobile_sdk/a93;

    invoke-direct {v7, v1, v6}, Lads_mobile_sdk/a93;-><init>(Lads_mobile_sdk/b93;Lkotlin/coroutines/Continuation;)V

    goto :goto_20

    :goto_28
    iget-object v6, v14, Lads_mobile_sdk/a93;->i:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 1024
    iget v8, v14, Lads_mobile_sdk/a93;->k:I

    const-string v9, ") is not eligible because it was excluded by AdRequest.skipUninitializedAdapters and has not yet successfully initialized."

    const-string v10, "The adapter requested for collecting bidding signals ("

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_b6

    if-eq v8, v15, :cond_93

    if-eq v8, v13, :cond_80

    if-eq v8, v12, :cond_5e

    const/4 v0, 0x4

    if-ne v8, v0, :cond_56

    iget-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_4d
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_53

    move-object v6, v11

    goto/16 :goto_2e2

    :catchall_53
    move-exception v0

    goto/16 :goto_2e8

    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_5e
    iget-object v2, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    iget-object v3, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iget-object v0, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iget-object v5, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iget-object v8, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v12, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map$Entry;

    iget-object v13, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/b93;

    :try_start_72
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_53

    move-object v15, v11

    move-object v11, v0

    move-object v0, v6

    move-object v6, v15

    move-object v15, v3

    move-object v3, v5

    move-object v5, v2

    move-object v2, v8

    move-object v8, v13

    goto/16 :goto_242

    .line 1026
    :cond_80
    iget-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_8a
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_90

    move-object v0, v11

    goto/16 :goto_1ae

    :catchall_90
    move-exception v0

    goto/16 :goto_1b4

    .line 1027
    :cond_93
    iget-object v2, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    iget-object v3, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iget-object v0, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iget-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iget-object v5, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iget-object v8, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v12, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/Map$Entry;

    iget-object v15, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    check-cast v15, Lads_mobile_sdk/b93;

    :try_start_a7
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_90

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v5

    move-object v5, v3

    move-object/from16 v3, v17

    goto :goto_109

    .line 1028
    :cond_b6
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1035
    iget-object v6, v1, Lads_mobile_sdk/b93;->g:Lads_mobile_sdk/g83;

    sget-object v8, Lads_mobile_sdk/s11;->A0:Lads_mobile_sdk/s11;

    .line 1158
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v13

    .line 1159
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v16

    if-nez v16, :cond_1fc

    .line 1160
    invoke-static {v6, v8, v12, v13}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v6

    .line 1164
    :try_start_cf
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->g()Lads_mobile_sdk/ks3;

    move-result-object v8

    iget-object v8, v8, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 1165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v8, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 1168
    iget-object v8, v1, Lads_mobile_sdk/b93;->h:Lads_mobile_sdk/hf;

    iget-object v12, v1, Lads_mobile_sdk/b93;->i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v1, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v2, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v3, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v5, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v6, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v6, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    iput v15, v14, Lads_mobile_sdk/a93;->k:I

    invoke-virtual {v8, v12, v13, v14}, Lads_mobile_sdk/hf;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8
    :try_end_101
    .catchall {:try_start_cf .. :try_end_101} :catchall_1ba

    if-ne v8, v7, :cond_105

    goto/16 :goto_2df

    :cond_105
    move-object v12, v0

    move-object v15, v1

    move-object v0, v5

    move-object v5, v6

    .line 1169
    :goto_109
    :try_start_109
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_137

    .line 1172
    new-instance v0, Lads_mobile_sdk/m01;

    .line 1173
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    sget-object v3, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 1177
    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 1178
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 1186
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_133
    .catchall {:try_start_109 .. :try_end_133} :catchall_1b6

    invoke-static {v6, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1189
    :cond_137
    :try_start_137
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    .line 1190
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_14f

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_14f
    move-object v10, v2

    .line 1191
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/ts;

    .line 1192
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_189

    .line 1193
    invoke-virtual {v2}, Lads_mobile_sdk/ts;->w()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_189

    .line 1303
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_187

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1304
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v8, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16b

    .line 1414
    :cond_187
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1415
    :cond_189
    invoke-virtual {v4}, Lads_mobile_sdk/j53;->d()Ljava/lang/String;

    move-result-object v13

    .line 1416
    iput-object v5, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v6, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v11, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v11, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v11, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v11, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v11, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v11, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    const/4 v2, 0x2

    iput v2, v14, Lads_mobile_sdk/a93;->k:I

    move-object v8, v11

    move-object v11, v0

    move-object v0, v8

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Lads_mobile_sdk/b93;->a(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1a8
    .catchall {:try_start_137 .. :try_end_1a8} :catchall_1b6

    if-ne v2, v7, :cond_1ac

    goto/16 :goto_2df

    :cond_1ac
    move-object v3, v5

    move-object v2, v6

    .line 1423
    :goto_1ae
    :try_start_1ae
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1b0
    .catchall {:try_start_1ae .. :try_end_1b0} :catchall_90

    .line 1527
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_1b4
    move-object v6, v3

    goto :goto_1bc

    :catchall_1b6
    move-exception v0

    move-object v2, v6

    move-object v6, v5

    goto :goto_1bc

    :catchall_1ba
    move-exception v0

    move-object v2, v6

    .line 1539
    :goto_1bc
    :try_start_1bc
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1543
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_1f5

    .line 1545
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1d2

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1d2

    .line 1551
    invoke-virtual {v6, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1d2

    :catchall_1cf
    move-exception v0

    move-object v3, v0

    goto :goto_1f6

    .line 1557
    :cond_1d2
    :goto_1d2
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1ed

    .line 1558
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1e5

    .line 1559
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_1df

    throw v0

    .line 1560
    :cond_1df
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1561
    :cond_1e5
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1562
    :cond_1ed
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1563
    :cond_1f5
    throw v0
    :try_end_1f6
    .catchall {:try_start_1bc .. :try_end_1f6} :catchall_1cf

    .line 1564
    :goto_1f6
    :try_start_1f6
    throw v3
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f7

    :catchall_1f7
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1fc
    move-object v6, v11

    .line 1602
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {v8, v11, v15}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 1608
    :try_start_205
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v11

    invoke-virtual {v11}, Lads_mobile_sdk/rr3;->g()Lads_mobile_sdk/ks3;

    move-result-object v11

    iget-object v11, v11, Lads_mobile_sdk/ks3;->c:Lads_mobile_sdk/m33;

    .line 1609
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v11, Lads_mobile_sdk/m33;->d:Ljava/lang/String;

    .line 1612
    iget-object v11, v1, Lads_mobile_sdk/b93;->h:Lads_mobile_sdk/hf;

    iget-object v12, v1, Lads_mobile_sdk/b93;->i:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v1, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v0, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v2, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v3, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v4, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v5, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v8, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v8, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    const/4 v15, 0x3

    iput v15, v14, Lads_mobile_sdk/a93;->k:I

    invoke-virtual {v11, v12, v13, v14}, Lads_mobile_sdk/hf;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11
    :try_end_238
    .catchall {:try_start_205 .. :try_end_238} :catchall_2ee

    if-ne v11, v7, :cond_23c

    goto/16 :goto_2df

    :cond_23c
    move-object v12, v0

    move-object v15, v8

    move-object v0, v11

    move-object v8, v1

    move-object v11, v5

    move-object v5, v15

    .line 1613
    :goto_242
    :try_start_242
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_270

    .line 1616
    new-instance v0, Lads_mobile_sdk/m01;

    .line 1617
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1620
    sget-object v3, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 1621
    invoke-direct {v0, v2, v3}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 1622
    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 1630
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26c
    .catchall {:try_start_242 .. :try_end_26c} :catchall_2eb

    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 1633
    :cond_270
    :try_start_270
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 1634
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_288

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_288
    move-object v10, v0

    .line 1635
    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ts;

    .line 1636
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_2c2

    .line 1637
    invoke-virtual {v0}, Lads_mobile_sdk/ts;->w()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2c2

    .line 1747
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1748
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a4

    .line 1858
    :cond_2c0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1859
    :cond_2c2
    invoke-virtual {v4}, Lads_mobile_sdk/j53;->d()Ljava/lang/String;

    move-result-object v13

    .line 1860
    iput-object v15, v14, Lads_mobile_sdk/a93;->a:Ljava/lang/Object;

    iput-object v5, v14, Lads_mobile_sdk/a93;->b:Ljava/lang/Object;

    iput-object v6, v14, Lads_mobile_sdk/a93;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object v6, v14, Lads_mobile_sdk/a93;->d:Ljava/util/Map;

    iput-object v6, v14, Lads_mobile_sdk/a93;->e:Lads_mobile_sdk/j53;

    iput-object v6, v14, Lads_mobile_sdk/a93;->f:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    iput-object v6, v14, Lads_mobile_sdk/a93;->g:Lads_mobile_sdk/rr3;

    iput-object v6, v14, Lads_mobile_sdk/a93;->h:Lads_mobile_sdk/rr3;

    const/4 v0, 0x4

    iput v0, v14, Lads_mobile_sdk/a93;->k:I

    invoke-virtual/range {v8 .. v14}, Lads_mobile_sdk/b93;->a(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2dd
    .catchall {:try_start_270 .. :try_end_2dd} :catchall_2eb

    if-ne v0, v7, :cond_2e0

    :goto_2df
    return-object v7

    :cond_2e0
    move-object v2, v5

    move-object v3, v15

    .line 1867
    :goto_2e2
    :try_start_2e2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2e4
    .catchall {:try_start_2e2 .. :try_end_2e4} :catchall_53

    .line 2010
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_2e8
    move-object v5, v2

    move-object v8, v3

    goto :goto_2f0

    :catchall_2eb
    move-exception v0

    move-object v8, v15

    goto :goto_2f0

    :catchall_2ee
    move-exception v0

    move-object v5, v8

    .line 2020
    :goto_2f0
    :try_start_2f0
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2024
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_329

    .line 2026
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_306

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_306

    .line 2032
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_306

    :catchall_303
    move-exception v0

    move-object v2, v0

    goto :goto_32a

    .line 2038
    :cond_306
    :goto_306
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_321

    .line 2039
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_319

    .line 2040
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_313

    throw v0

    .line 2041
    :cond_313
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2042
    :cond_319
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2043
    :cond_321
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2044
    :cond_329
    throw v0
    :try_end_32a
    .catchall {:try_start_2f0 .. :try_end_32a} :catchall_303

    .line 2045
    :goto_32a
    :try_start_32a
    throw v2
    :try_end_32b
    .catchall {:try_start_32a .. :try_end_32b} :catchall_32b

    :catchall_32b
    move-exception v0

    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
