###### Class ads_mobile_sdk.ju0 (ads_mobile_sdk.ju0)
.class public final Lads_mobile_sdk/ju0;
.super Lads_mobile_sdk/yx0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zx0;


# instance fields
.field public final P:Lads_mobile_sdk/rb;

.field public final Q:Lads_mobile_sdk/v3;

.field public final R:Lads_mobile_sdk/g83;

.field public final S:Lads_mobile_sdk/ks3;

.field public final T:Lads_mobile_sdk/vn;

.field public final U:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Lads_mobile_sdk/rb;Ljava/lang/String;Lads_mobile_sdk/v3;Lads_mobile_sdk/c1;Lads_mobile_sdk/h41;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/j53;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/df2;Lads_mobile_sdk/o21;Lads_mobile_sdk/j1;Lads_mobile_sdk/vn;)V
    .registers 38

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p21

    .line 1
    const-string v6, "applicationContext"

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "uiScope"

    move-object/from16 v8, p2

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "uiContext"

    move-object/from16 v9, p3

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "backgroundScope"

    move-object/from16 v10, p4

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "backgroundContext"

    move-object/from16 v11, p5

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "flags"

    move-object/from16 v12, p6

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "traceLogger"

    move-object/from16 v13, p7

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adSpamClient"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "afmaVersion"

    move-object/from16 v14, p9

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adEventEmitter"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adActivityLifecycleEventEmitter"

    move-object/from16 v15, p11

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "fullscreenWebViewContainer"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "rootTraceCreator"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "traceMetaSet"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "requestType"

    move-object/from16 v0, p15

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "commonConfiguration"

    move-object/from16 v0, p16

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adConfiguration"

    move-object/from16 v0, p17

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "omidMonitor"

    move-object/from16 v0, p18

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "gmaUtil"

    move-object/from16 v0, p19

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "backButtonStateDelegate"

    move-object/from16 v0, p20

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "appStatsTracker"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {v15}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v15

    const-string v6, "of(...)"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move-object/from16 v12, p18

    move-object/from16 v13, p19

    move-object v14, v0

    move-object/from16 v0, p0

    .line 87
    invoke-direct/range {v0 .. v15}, Lads_mobile_sdk/yx0;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ex0;Lads_mobile_sdk/ur3;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/zy;Lads_mobile_sdk/i2;Lads_mobile_sdk/df2;Lads_mobile_sdk/o21;Lads_mobile_sdk/lo;Ljava/util/Optional;)V

    move-object/from16 v1, p8

    .line 88
    iput-object v1, v0, Lads_mobile_sdk/ju0;->P:Lads_mobile_sdk/rb;

    move-object/from16 v1, p10

    .line 90
    iput-object v1, v0, Lads_mobile_sdk/ju0;->Q:Lads_mobile_sdk/v3;

    move-object/from16 v3, p13

    .line 93
    iput-object v3, v0, Lads_mobile_sdk/ju0;->R:Lads_mobile_sdk/g83;

    move-object/from16 v4, p14

    .line 94
    iput-object v4, v0, Lads_mobile_sdk/ju0;->S:Lads_mobile_sdk/ks3;

    move-object/from16 v5, p21

    .line 101
    iput-object v5, v0, Lads_mobile_sdk/ju0;->T:Lads_mobile_sdk/vn;

    move-object/from16 v2, p12

    .line 123
    invoke-virtual {v0, v2}, Lads_mobile_sdk/yy0;->a(Landroid/view/View;)V

    .line 124
    invoke-virtual {v0, v2}, Lads_mobile_sdk/yx0;->a(Lads_mobile_sdk/h41;)V

    .line 128
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lads_mobile_sdk/ju0;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 189
    instance-of v0, p2, Lads_mobile_sdk/iu0;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/iu0;

    iget v1, v0, Lads_mobile_sdk/iu0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/iu0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/iu0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/iu0;-><init>(Lads_mobile_sdk/ju0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/iu0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 388
    iget v2, v0, Lads_mobile_sdk/iu0;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_57

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    iget-object p1, v0, Lads_mobile_sdk/iu0;->a:Lads_mobile_sdk/ju0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_3a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 389
    iput-object p0, v0, Lads_mobile_sdk/iu0;->a:Lads_mobile_sdk/ju0;

    iput v4, v0, Lads_mobile_sdk/iu0;->d:I

    invoke-super {p0, p1, v0}, Lads_mobile_sdk/yx0;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_48

    goto :goto_56

    :cond_48
    move-object p1, p0

    .line 390
    :goto_49
    iget-object p1, p1, Lads_mobile_sdk/ju0;->Q:Lads_mobile_sdk/v3;

    const/4 p2, 0x0

    iput-object p2, v0, Lads_mobile_sdk/iu0;->a:Lads_mobile_sdk/ju0;

    iput v3, v0, Lads_mobile_sdk/iu0;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/v3;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_57

    :goto_56
    return-object v1

    .line 391
    :cond_57
    :goto_57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 188
    iget-object v0, p0, Lads_mobile_sdk/ju0;->Q:Lads_mobile_sdk/v3;

    invoke-virtual {v0, p1, p2}, Lads_mobile_sdk/v3;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/content/Context;ZZ)V
    .registers 15

    .line 392
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lads_mobile_sdk/ju0;->R:Lads_mobile_sdk/g83;

    .line 499
    sget-object v1, Lads_mobile_sdk/s11;->a0:Lads_mobile_sdk/s11;

    .line 500
    iget-object v2, p0, Lads_mobile_sdk/yx0;->F:Lads_mobile_sdk/j53;

    .line 501
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lads_mobile_sdk/ju0;->S:Lads_mobile_sdk/ks3;

    .line 503
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v4

    .line 504
    iget-object v4, v4, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v5, "gads:override_pub_immersive_setting:enabled"

    const-string v6, "gads:default_to_immersive:enabled"

    const-string v7, "getStackTrace(...)"

    const/4 v8, 0x0

    const-string v9, "key"

    const/4 v10, 0x1

    if-nez v4, :cond_cb

    .line 505
    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v0

    .line 506
    :try_start_2b
    iget-object v1, p0, Lads_mobile_sdk/ju0;->P:Lads_mobile_sdk/rb;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->b(Ljava/util/List;)V

    .line 508
    invoke-virtual {p0}, Lads_mobile_sdk/ju0;->q()Z

    move-result v1
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_7c

    if-nez v1, :cond_4a

    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 509
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 510
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 529
    iget-object v1, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 530
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v1, v5, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7e

    if-nez p3, :cond_79

    goto :goto_7e

    .line 549
    :cond_79
    iput-boolean p2, p0, Lads_mobile_sdk/yy0;->v:Z

    goto :goto_83

    :catchall_7c
    move-exception p1

    goto :goto_8c

    .line 550
    :cond_7e
    :goto_7e
    iput-boolean v10, p0, Lads_mobile_sdk/yy0;->v:Z

    goto :goto_83

    .line 551
    :cond_81
    iput-boolean p2, p0, Lads_mobile_sdk/yy0;->v:Z

    .line 552
    :goto_83
    invoke-virtual {p0, p1}, Lads_mobile_sdk/yy0;->a(Landroid/content/Context;)Z

    .line 553
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_88
    .catchall {:try_start_4a .. :try_end_88} :catchall_7c

    .line 657
    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 665
    :goto_8c
    :try_start_8c
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 669
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_c4

    .line 671
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_a1

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_a1

    .line 677
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_a1

    :catchall_9f
    move-exception p1

    goto :goto_c5

    .line 683
    :cond_a1
    :goto_a1
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_bc

    .line 684
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_b4

    .line 685
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_ae

    throw p1

    .line 686
    :cond_ae
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 687
    :cond_b4
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 688
    :cond_bc
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 689
    :cond_c4
    throw p1
    :try_end_c5
    .catchall {:try_start_8c .. :try_end_c5} :catchall_9f

    .line 690
    :goto_c5
    :try_start_c5
    throw p1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c6

    :catchall_c6
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 724
    :cond_cb
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 725
    :try_start_d3
    iget-object v1, p0, Lads_mobile_sdk/ju0;->P:Lads_mobile_sdk/rb;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lads_mobile_sdk/rb;->b(Ljava/util/List;)V

    .line 727
    invoke-virtual {p0}, Lads_mobile_sdk/ju0;->q()Z

    move-result v1
    :try_end_ec
    .catchall {:try_start_d3 .. :try_end_ec} :catchall_124

    if-nez v1, :cond_f2

    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 728
    :cond_f2
    :try_start_f2
    iget-object v1, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 729
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v6, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 748
    iget-object v1, p0, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 749
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v1, v5, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_126

    if-nez p3, :cond_121

    goto :goto_126

    .line 768
    :cond_121
    iput-boolean p2, p0, Lads_mobile_sdk/yy0;->v:Z

    goto :goto_12b

    :catchall_124
    move-exception p1

    goto :goto_134

    .line 769
    :cond_126
    :goto_126
    iput-boolean v10, p0, Lads_mobile_sdk/yy0;->v:Z

    goto :goto_12b

    .line 770
    :cond_129
    iput-boolean p2, p0, Lads_mobile_sdk/yy0;->v:Z

    .line 771
    :goto_12b
    invoke-virtual {p0, p1}, Lads_mobile_sdk/yy0;->a(Landroid/content/Context;)Z

    .line 772
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_130
    .catchall {:try_start_f2 .. :try_end_130} :catchall_124

    .line 913
    invoke-static {v0, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 921
    :goto_134
    :try_start_134
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 925
    instance-of p2, p1, Lads_mobile_sdk/v24;

    if-nez p2, :cond_16c

    .line 927
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_149

    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_149

    .line 933
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_149

    :catchall_147
    move-exception p1

    goto :goto_16d

    .line 939
    :cond_149
    :goto_149
    instance-of p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p2, :cond_164

    .line 940
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_15c

    .line 941
    instance-of p2, p1, Lads_mobile_sdk/w01;

    if-eqz p2, :cond_156

    throw p1

    .line 942
    :cond_156
    new-instance p2, Lads_mobile_sdk/b01;

    invoke-direct {p2, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 943
    :cond_15c
    new-instance p2, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p2

    .line 944
    :cond_164
    new-instance p2, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p2, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p2

    .line 945
    :cond_16c
    throw p1
    :try_end_16d
    .catchall {:try_start_134 .. :try_end_16d} :catchall_147

    .line 946
    :goto_16d
    :try_start_16d
    throw p1
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16e

    :catchall_16e
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/hu0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/hu0;

    iget v1, v0, Lads_mobile_sdk/hu0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/hu0;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/hu0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/hu0;-><init>(Lads_mobile_sdk/ju0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/hu0;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 211
    iget v2, v0, Lads_mobile_sdk/hu0;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_44

    if-eq v2, v6, :cond_3e

    if-eq v2, v5, :cond_38

    if-ne v2, v4, :cond_30

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8b

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object v2, v0, Lads_mobile_sdk/hu0;->a:Lads_mobile_sdk/ju0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7e

    :cond_3e
    iget-object v2, v0, Lads_mobile_sdk/hu0;->a:Lads_mobile_sdk/ju0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_57

    :cond_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 212
    iput-object p0, v0, Lads_mobile_sdk/hu0;->a:Lads_mobile_sdk/ju0;

    iput v6, v0, Lads_mobile_sdk/hu0;->d:I

    .line 213
    invoke-virtual {p0}, Lads_mobile_sdk/yx0;->j()Lads_mobile_sdk/r31;

    move-result-object p1

    .line 214
    iput-object v3, p1, Lads_mobile_sdk/r31;->p:Lads_mobile_sdk/ay0;

    .line 215
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p1, v1, :cond_56

    goto :goto_8a

    :cond_56
    move-object v2, p0

    .line 216
    :goto_57
    iget-object p1, v2, Lads_mobile_sdk/yy0;->e:Lads_mobile_sdk/ex0;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    const-string v6, "key"

    const-string v7, "gad:interstitial_notify_publisher_without_delay"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v7, v6, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7e

    .line 236
    iput-object v2, v0, Lads_mobile_sdk/hu0;->a:Lads_mobile_sdk/ju0;

    iput v5, v0, Lads_mobile_sdk/hu0;->d:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/ju0;->d(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v1, :cond_7e

    goto :goto_8a

    .line 238
    :cond_7e
    :goto_7e
    iget-object p1, v2, Lads_mobile_sdk/ju0;->Q:Lads_mobile_sdk/v3;

    iput-object v3, v0, Lads_mobile_sdk/hu0;->a:Lads_mobile_sdk/ju0;

    iput v4, v0, Lads_mobile_sdk/hu0;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/v3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8b

    :goto_8a
    return-object v1

    .line 239
    :cond_8b
    :goto_8b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Lkotlin/Unit;
    .registers 3

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/yy0;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/ju0;->Q:Lads_mobile_sdk/v3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/v3;->h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    check-cast p1, Lkotlin/Unit;

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_1a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 193
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;

    .line 194
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;

    .line 195
    const-string v2, "There was an internal error when attempting to show fullscreen content."

    const/4 v3, 0x0

    .line 196
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V

    .line 197
    invoke-virtual {p0, v0, p1}, Lads_mobile_sdk/ju0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final q()Z
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/yy0;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lads_mobile_sdk/s;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    .line 4
    const-string v0, "Fullscreen ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies"

    .line 5
    invoke-static {v0, v3}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 7
    new-instance v4, Lads_mobile_sdk/eu0;

    invoke-direct {v4, p0, v3}, Lads_mobile_sdk/eu0;-><init>(Lads_mobile_sdk/ju0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 15
    const-string v0, "Application process is in background"

    invoke-static {v0, v3, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return v1

    .line 16
    :cond_20
    iget-object v0, p0, Lads_mobile_sdk/yx0;->G:Lads_mobile_sdk/i2;

    .line 17
    iget-boolean v4, v0, Lads_mobile_sdk/i2;->H0:Z

    if-eqz v4, :cond_4a

    .line 18
    iget v0, v0, Lads_mobile_sdk/i2;->I0:I

    iget-object v4, p0, Lads_mobile_sdk/ju0;->T:Lads_mobile_sdk/vn;

    .line 19
    iget-object v5, v4, Lads_mobile_sdk/vn;->c:Ljava/lang/Object;

    .line 20
    monitor-enter v5

    :try_start_2d
    iget v4, v4, Lads_mobile_sdk/vn;->e:I
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_47

    monitor-exit v5

    if-eq v0, v4, :cond_4a

    .line 21
    const-string v0, "The consent form has already been shown."

    .line 22
    invoke-static {v0, v3}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iget-object v0, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 24
    new-instance v4, Lads_mobile_sdk/fu0;

    invoke-direct {v4, p0, v3}, Lads_mobile_sdk/fu0;-><init>(Lads_mobile_sdk/ju0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 32
    const-string v0, "The consent form has already been shown."

    invoke-static {v0, v3, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return v1

    :catchall_47
    move-exception v0

    .line 33
    monitor-exit v5

    throw v0

    .line 34
    :cond_4a
    iget-object v0, p0, Lads_mobile_sdk/ju0;->U:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 35
    const-string v0, "This ad has already been shown."

    .line 36
    invoke-static {v0, v3}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-object v0, p0, Lads_mobile_sdk/yy0;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    new-instance v4, Lads_mobile_sdk/gu0;

    invoke-direct {v4, p0, v3}, Lads_mobile_sdk/gu0;-><init>(Lads_mobile_sdk/ju0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 43
    const-string v0, "The ad has already been shown"

    invoke-static {v0, v3, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return v1

    :cond_68
    return v4
.end method
