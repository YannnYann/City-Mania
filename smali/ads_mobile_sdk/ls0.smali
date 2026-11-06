###### Class ads_mobile_sdk.ls0 (ads_mobile_sdk.ls0)
.class public final Lads_mobile_sdk/ls0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/ur3;

.field public final c:Lads_mobile_sdk/g83;

.field public final d:Lads_mobile_sdk/ex0;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ur3;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;)V
    .registers 6

    .line 1
    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/ls0;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lads_mobile_sdk/ls0;->b:Lads_mobile_sdk/ur3;

    .line 30
    iput-object p3, p0, Lads_mobile_sdk/ls0;->c:Lads_mobile_sdk/g83;

    .line 31
    iput-object p4, p0, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    .line 33
    new-instance p1, Lads_mobile_sdk/js0;

    invoke-direct {p1, p0}, Lads_mobile_sdk/js0;-><init>(Lads_mobile_sdk/ls0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 53
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ls0;->f:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/ls0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/ks0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ks0;

    iget v1, v0, Lads_mobile_sdk/ks0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/ks0;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/ks0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/ks0;-><init>(Lads_mobile_sdk/ls0;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/ks0;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 68
    iget v2, v0, Lads_mobile_sdk/ks0;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/ks0;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/ks0;->a:Lads_mobile_sdk/ls0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_4a

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/ls0;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 201
    iput-object p0, v0, Lads_mobile_sdk/ks0;->a:Lads_mobile_sdk/ls0;

    iput-object p1, v0, Lads_mobile_sdk/ks0;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/ks0;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 202
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object v0, p0, Lads_mobile_sdk/ls0;->g:Ljava/lang/String;

    if-eqz v0, :cond_4f

    goto :goto_61

    .line 203
    :cond_4f
    const-string v0, "getGmpAppId"

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ls0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f

    :catchall_5c
    move-exception p0

    goto :goto_65

    :cond_5e
    move-object v0, v4

    .line 204
    :goto_5f
    iput-object v0, p0, Lads_mobile_sdk/ls0;->g:Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_5c

    .line 339
    :goto_61
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 340
    :goto_65
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static a(Lads_mobile_sdk/ls0;Lads_mobile_sdk/is0;Landroid/os/Bundle;Ljava/lang/String;)Lkotlin/Unit;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 352
    iget-object v3, v1, Lads_mobile_sdk/ls0;->c:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->F0:Lads_mobile_sdk/s11;

    .line 455
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v6

    .line 456
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v7

    const-string v8, "FirebaseAnalyticsAdapter.invokeMethod logEvent for "

    const-string v10, "Exception while calling Firebase Analytics SDK logEvent method"

    const-string v11, "am"

    const-string v12, "_r"

    const-string v13, "_ac"

    const-string v14, "_aeid"

    const-class v15, Landroid/os/Bundle;

    const-string v9, "logEvent"

    move-object/from16 v16, v7

    const-class v7, Ljava/lang/String;

    move-object/from16 v17, v8

    const/4 v8, 0x1

    if-nez v16, :cond_ee

    .line 457
    invoke-static {v3, v4, v5, v6}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v3

    .line 458
    :try_start_33
    iget-object v4, v1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a6

    .line 459
    iget-object v4, v1, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 463
    filled-new-array {v7, v7, v15}, [Ljava/lang/Class;

    move-result-object v5

    .line 464
    invoke-virtual {v4, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 470
    invoke-virtual {v2}, Lads_mobile_sdk/is0;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_62

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_62

    :catchall_5d
    move-exception v0

    goto :goto_ae

    :catch_5f
    move-exception v0

    const/4 v4, 0x4

    goto :goto_8b

    :cond_62
    :goto_62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 471
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v14, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 472
    iget-object v5, v2, Lads_mobile_sdk/is0;->a:Ljava/lang/String;

    .line 473
    sget-object v6, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 475
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 476
    invoke-virtual {v0, v12, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 477
    :cond_79
    iget-object v5, v1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 479
    invoke-virtual {v2}, Lads_mobile_sdk/is0;->d()Ljava/lang/String;

    move-result-object v6

    .line 480
    filled-new-array {v11, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 481
    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_8a} :catch_5f
    .catchall {:try_start_33 .. :try_end_8a} :catchall_5d

    goto :goto_a6

    .line 491
    :goto_8b
    :try_start_8b
    invoke-static {v10, v0, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 495
    iget-object v1, v1, Lads_mobile_sdk/ls0;->b:Lads_mobile_sdk/ur3;

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    :cond_a6
    :goto_a6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a8
    .catchall {:try_start_8b .. :try_end_a8} :catchall_5d

    const/4 v1, 0x0

    .line 582
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_16f

    .line 590
    :goto_ae
    :try_start_ae
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 594
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_e7

    .line 596
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_c4

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c4

    .line 602
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_c4

    :catchall_c1
    move-exception v0

    move-object v1, v0

    goto :goto_e8

    .line 608
    :cond_c4
    :goto_c4
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_df

    .line 609
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d7

    .line 610
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_d1

    throw v0

    .line 611
    :cond_d1
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 612
    :cond_d7
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 613
    :cond_df
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 614
    :cond_e7
    throw v0
    :try_end_e8
    .catchall {:try_start_ae .. :try_end_e8} :catchall_c1

    .line 615
    :goto_e8
    :try_start_e8
    throw v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e9

    :catchall_e9
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_ee
    move-object/from16 v5, v17

    .line 649
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v3, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 650
    :try_start_f8
    iget-object v4, v1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_169

    .line 651
    iget-object v4, v1, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 655
    filled-new-array {v7, v7, v15}, [Ljava/lang/Class;

    move-result-object v6

    .line 656
    invoke-virtual {v4, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 662
    invoke-virtual {v2}, Lads_mobile_sdk/is0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_127

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_127

    :catchall_122
    move-exception v0

    goto :goto_172

    :catch_124
    move-exception v0

    const/4 v4, 0x4

    goto :goto_150

    :cond_127
    :goto_127
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 663
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v14, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 664
    iget-object v6, v2, Lads_mobile_sdk/is0;->a:Ljava/lang/String;

    .line 665
    sget-object v7, Lads_mobile_sdk/is0;->b:Lads_mobile_sdk/is0;

    .line 667
    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13e

    .line 668
    invoke-virtual {v0, v12, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 669
    :cond_13e
    iget-object v6, v1, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 671
    invoke-virtual {v2}, Lads_mobile_sdk/is0;->d()Ljava/lang/String;

    move-result-object v7

    .line 672
    filled-new-array {v11, v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 673
    invoke-virtual {v4, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_14f} :catch_124
    .catchall {:try_start_f8 .. :try_end_14f} :catchall_122

    goto :goto_169

    .line 683
    :goto_150
    :try_start_150
    invoke-static {v10, v0, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 687
    iget-object v1, v1, Lads_mobile_sdk/ls0;->b:Lads_mobile_sdk/ur3;

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, v2, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    :cond_169
    :goto_169
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16b
    .catchall {:try_start_150 .. :try_end_16b} :catchall_122

    const/4 v1, 0x0

    .line 811
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 812
    :goto_16f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 930
    :goto_172
    :try_start_172
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 934
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1ab

    .line 936
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_188

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_188

    .line 942
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_188

    :catchall_185
    move-exception v0

    move-object v1, v0

    goto :goto_1ac

    .line 948
    :cond_188
    :goto_188
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1a3

    .line 949
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19b

    .line 950
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_195

    throw v0

    .line 951
    :cond_195
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 952
    :cond_19b
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 953
    :cond_1a3
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 954
    :cond_1ab
    throw v0
    :try_end_1ac
    .catchall {:try_start_172 .. :try_end_1ac} :catchall_185

    .line 955
    :goto_1ac
    :try_start_1ac
    throw v1
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ad

    :catchall_1ad
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 342
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 343
    iget-object v0, p0, Lads_mobile_sdk/ls0;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 344
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 345
    iget-object v2, p0, Lads_mobile_sdk/ls0;->e:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 346
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception v0

    .line 349
    const-string v1, "Exception while calling Firebase Analytics SDK method"

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 350
    iget-object v1, p0, Lads_mobile_sdk/ls0;->b:Lads_mobile_sdk/ur3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirebaseAnalyticsAdapter.invokeMethod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lads_mobile_sdk/as3;

    invoke-virtual {v1, p1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    const/4 p1, 0x0

    return-object p1
.end method
