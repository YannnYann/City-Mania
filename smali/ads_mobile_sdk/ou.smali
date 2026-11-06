###### Class ads_mobile_sdk.ou (ads_mobile_sdk.ou)
.class public abstract Lads_mobile_sdk/ou;
.super Lads_mobile_sdk/fp2;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Lads_mobile_sdk/ex0;

.field public final g:Lads_mobile_sdk/f0;

.field public final h:Lkotlinx/coroutines/sync/Mutex;

.field public i:Lads_mobile_sdk/hu;

.field public j:Lads_mobile_sdk/iu;

.field public k:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/tx;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f0;)V
    .registers 7

    .line 1
    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lads_mobile_sdk/fp2;-><init>()V

    .line 75
    iput-object p1, p0, Lads_mobile_sdk/ou;->c:Lads_mobile_sdk/tx;

    .line 76
    iput-object p2, p0, Lads_mobile_sdk/ou;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 77
    iput-object p3, p0, Lads_mobile_sdk/ou;->e:Lads_mobile_sdk/g83;

    .line 78
    iput-object p4, p0, Lads_mobile_sdk/ou;->f:Lads_mobile_sdk/ex0;

    .line 79
    iput-object p5, p0, Lads_mobile_sdk/ou;->g:Lads_mobile_sdk/f0;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 85
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 13
    instance-of v2, v1, Lads_mobile_sdk/ku;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/ku;

    iget v3, v2, Lads_mobile_sdk/ku;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/ku;->i:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/ku;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/ku;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v1, v2, Lads_mobile_sdk/ku;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 137
    iget v4, v2, Lads_mobile_sdk/ku;->i:I

    const-string v6, "exception"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_95

    if-eq v4, v10, :cond_79

    if-eq v4, v9, :cond_6a

    if-eq v4, v8, :cond_4d

    if-ne v4, v7, :cond_45

    iget-object v3, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_3d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_42
    .catchall {:try_start_3d .. :try_end_40} :catchall_2c8

    goto/16 :goto_2c1

    :catch_42
    move-exception v0

    goto/16 :goto_2d6

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4d
    iget-object v0, v2, Lads_mobile_sdk/ku;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ku;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v2, Lads_mobile_sdk/ku;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v2, Lads_mobile_sdk/ku;->c:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v13, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/ou;

    :try_start_5d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_67

    move-object v1, v0

    move-object v5, v4

    move-object v4, v9

    move-object v9, v10

    move-object v0, v13

    goto/16 :goto_22d

    :catchall_67
    move-exception v0

    goto/16 :goto_303

    .line 139
    :cond_6a
    iget-object v3, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    iget-object v0, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_71
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_76
    .catchall {:try_start_71 .. :try_end_74} :catchall_184

    goto/16 :goto_17d

    :catch_76
    move-exception v0

    goto/16 :goto_192

    .line 140
    :cond_79
    iget-object v0, v2, Lads_mobile_sdk/ku;->f:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v2, Lads_mobile_sdk/ku;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v2, Lads_mobile_sdk/ku;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v2, Lads_mobile_sdk/ku;->c:Lads_mobile_sdk/rr3;

    iget-object v10, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v13, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    check-cast v13, Lads_mobile_sdk/ou;

    :try_start_89
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_92

    move-object v1, v0

    move-object v5, v4

    move-object v4, v8

    move-object v8, v10

    move-object v0, v13

    goto :goto_e9

    :catchall_92
    move-exception v0

    goto/16 :goto_1c0

    .line 141
    :cond_95
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    iget-object v1, v0, Lads_mobile_sdk/ou;->e:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->O0:Lads_mobile_sdk/s11;

    .line 411
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 412
    new-instance v14, Lads_mobile_sdk/ks3;

    .line 413
    new-instance v15, Lads_mobile_sdk/n03;

    invoke-direct {v15}, Lads_mobile_sdk/n03;-><init>()V

    .line 414
    new-instance v7, Lads_mobile_sdk/tn1;

    invoke-direct {v7}, Lads_mobile_sdk/tn1;-><init>()V

    .line 415
    new-instance v8, Lads_mobile_sdk/m33;

    invoke-direct {v8}, Lads_mobile_sdk/m33;-><init>()V

    .line 416
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 417
    invoke-direct {v14, v15, v7, v8, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 418
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 419
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v5, :cond_200

    .line 420
    invoke-static {v1, v4, v13, v14}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v8

    .line 421
    :try_start_c5
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 422
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 424
    iget-object v1, v0, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 700
    iput-object v0, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    iput-object v8, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    iput-object v8, v2, Lads_mobile_sdk/ku;->c:Lads_mobile_sdk/rr3;

    iput-object v7, v2, Lads_mobile_sdk/ku;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v4, v2, Lads_mobile_sdk/ku;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v2, Lads_mobile_sdk/ku;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v10, v2, Lads_mobile_sdk/ku;->i:I

    invoke-interface {v1, v12, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_e3
    .catchall {:try_start_c5 .. :try_end_e3} :catchall_1be

    if-ne v5, v3, :cond_e7

    goto/16 :goto_2be

    :cond_e7
    move-object v5, v4

    move-object v4, v8

    .line 701
    :goto_e9
    :try_start_e9
    invoke-virtual {v0}, Lads_mobile_sdk/ou;->l()V

    .line 703
    iget-object v10, v0, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    iget-object v13, v0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    invoke-virtual {v0, v10, v13}, Lads_mobile_sdk/ou;->a(Lads_mobile_sdk/hu;Lads_mobile_sdk/iu;)Lads_mobile_sdk/q11;

    move-result-object v10

    iput-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 704
    iget-object v10, v0, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    if-eqz v10, :cond_111

    .line 705
    invoke-virtual {v10}, Lads_mobile_sdk/gu;->a()Z

    move-result v13

    if-eqz v13, :cond_10c

    .line 706
    invoke-virtual {v0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v13

    .line 707
    iget-boolean v13, v13, Lads_mobile_sdk/qu;->d:Z

    if-eqz v13, :cond_111

    goto :goto_10c

    :catchall_109
    move-exception v0

    goto/16 :goto_1ba

    .line 708
    :cond_10c
    :goto_10c
    iput-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_129

    .line 710
    :cond_111
    iget-object v10, v0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    if-eqz v10, :cond_121

    .line 711
    invoke-virtual {v10}, Lads_mobile_sdk/gu;->a()Z

    move-result v13

    if-eqz v13, :cond_11c

    goto :goto_121

    .line 717
    :cond_11c
    iput-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_129

    .line 718
    :cond_121
    :goto_121
    invoke-virtual {v0}, Lads_mobile_sdk/ou;->g()Lads_mobile_sdk/iu;

    move-result-object v10

    .line 719
    iput-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 720
    iput-object v10, v0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;
    :try_end_129
    .catchall {:try_start_e9 .. :try_end_129} :catchall_109

    .line 988
    :goto_129
    :try_start_129
    invoke-interface {v1, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 989
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    new-instance v10, Lads_mobile_sdk/gh3;

    invoke-interface {v0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v13

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/q11;

    invoke-virtual {v0}, Lads_mobile_sdk/ou;->k()Lads_mobile_sdk/gf3;

    move-result-object v0

    invoke-direct {v10, v13, v7, v0}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;Lads_mobile_sdk/gf3;)V

    iput-object v10, v1, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 995
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/gu;
    :try_end_14b
    .catchall {:try_start_129 .. :try_end_14b} :catchall_159

    .line 998
    :try_start_14b
    instance-of v1, v0, Lads_mobile_sdk/hu;

    if-eqz v1, :cond_15d

    new-instance v1, Lads_mobile_sdk/q01;

    check-cast v0, Lads_mobile_sdk/hu;

    .line 999
    iget-object v0, v0, Lads_mobile_sdk/hu;->c:Lads_mobile_sdk/oe3;

    .line 1000
    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_181

    :catchall_159
    move-exception v0

    goto :goto_186

    :catch_15b
    move-exception v0

    goto :goto_189

    .line 1001
    :cond_15d
    instance-of v1, v0, Lads_mobile_sdk/iu;

    if-eqz v1, :cond_18c

    check-cast v0, Lads_mobile_sdk/iu;

    .line 1002
    iget-object v0, v0, Lads_mobile_sdk/iu;->c:Lkotlinx/coroutines/Deferred;

    .line 1003
    iput-object v8, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    iput-object v12, v2, Lads_mobile_sdk/ku;->c:Lads_mobile_sdk/rr3;

    iput-object v12, v2, Lads_mobile_sdk/ku;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v2, Lads_mobile_sdk/ku;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v2, Lads_mobile_sdk/ku;->f:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v2, Lads_mobile_sdk/ku;->i:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_177} :catch_15b
    .catchall {:try_start_14b .. :try_end_177} :catchall_159

    if-ne v1, v3, :cond_17b

    goto/16 :goto_2be

    :cond_17b
    move-object v3, v4

    move-object v2, v8

    .line 1004
    :goto_17d
    :try_start_17d
    check-cast v1, Lads_mobile_sdk/v01;
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_17f} :catch_76
    .catchall {:try_start_17d .. :try_end_17f} :catchall_184

    move-object v8, v2

    move-object v4, v3

    :goto_181
    move-object v3, v4

    move-object v2, v8

    goto :goto_1a8

    :catchall_184
    move-exception v0

    goto :goto_1b7

    :goto_186
    move-object v10, v8

    move-object v8, v4

    goto :goto_1c0

    :goto_189
    move-object v3, v4

    move-object v2, v8

    goto :goto_192

    .line 1005
    :cond_18c
    :try_start_18c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_192} :catch_15b
    .catchall {:try_start_18c .. :try_end_192} :catchall_159

    .line 1006
    :goto_192
    :try_start_192
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1007
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1010
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    iput-boolean v11, v4, Lads_mobile_sdk/uj2;->m:Z

    .line 1011
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1012
    new-instance v1, Lads_mobile_sdk/j01;

    const/4 v4, 0x6

    invoke-direct {v1, v0, v12, v12, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    .line 1260
    :goto_1a8
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_1b2

    .line 1261
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 1262
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1b2
    .catchall {:try_start_192 .. :try_end_1b2} :catchall_184

    .line 1263
    :cond_1b2
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_2f9

    :goto_1b7
    move-object v10, v2

    move-object v8, v3

    goto :goto_1c0

    .line 1275
    :goto_1ba
    :try_start_1ba
    invoke-interface {v1, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_1be
    .catchall {:try_start_1ba .. :try_end_1be} :catchall_159

    :catchall_1be
    move-exception v0

    move-object v10, v8

    .line 1282
    :goto_1c0
    :try_start_1c0
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1286
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1f9

    .line 1288
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1d6

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1d6

    .line 1294
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1d6

    :catchall_1d3
    move-exception v0

    move-object v1, v0

    goto :goto_1fa

    .line 1300
    :cond_1d6
    :goto_1d6
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1f1

    .line 1301
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_1e9

    .line 1302
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_1e3

    throw v0

    .line 1303
    :cond_1e3
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1304
    :cond_1e9
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1305
    :cond_1f1
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1306
    :cond_1f9
    throw v0
    :try_end_1fa
    .catchall {:try_start_1c0 .. :try_end_1fa} :catchall_1d3

    .line 1307
    :goto_1fa
    :try_start_1fa
    throw v1
    :try_end_1fb
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_1fb

    :catchall_1fb
    move-exception v0

    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1352
    :cond_200
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v4, v1, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v9

    .line 1353
    :try_start_208
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1354
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 1356
    iget-object v1, v0, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 1632
    iput-object v0, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    iput-object v9, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    iput-object v9, v2, Lads_mobile_sdk/ku;->c:Lads_mobile_sdk/rr3;

    iput-object v8, v2, Lads_mobile_sdk/ku;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v4, v2, Lads_mobile_sdk/ku;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v2, Lads_mobile_sdk/ku;->f:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x3

    iput v5, v2, Lads_mobile_sdk/ku;->i:I

    invoke-interface {v1, v12, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_227
    .catchall {:try_start_208 .. :try_end_227} :catchall_301

    if-ne v5, v3, :cond_22b

    goto/16 :goto_2be

    :cond_22b
    move-object v5, v4

    move-object v4, v9

    .line 1633
    :goto_22d
    :try_start_22d
    invoke-virtual {v0}, Lads_mobile_sdk/ou;->l()V

    .line 1635
    iget-object v7, v0, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    iget-object v10, v0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    invoke-virtual {v0, v7, v10}, Lads_mobile_sdk/ou;->a(Lads_mobile_sdk/hu;Lads_mobile_sdk/iu;)Lads_mobile_sdk/q11;

    move-result-object v7

    iput-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1636
    iget-object v7, v0, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    if-eqz v7, :cond_255

    .line 1637
    invoke-virtual {v7}, Lads_mobile_sdk/gu;->a()Z

    move-result v10

    if-eqz v10, :cond_250

    .line 1638
    invoke-virtual {v0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v10

    .line 1639
    iget-boolean v10, v10, Lads_mobile_sdk/qu;->d:Z

    if-eqz v10, :cond_255

    goto :goto_250

    :catchall_24d
    move-exception v0

    goto/16 :goto_2fd

    .line 1640
    :cond_250
    :goto_250
    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_26d

    .line 1642
    :cond_255
    iget-object v7, v0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    if-eqz v7, :cond_265

    .line 1643
    invoke-virtual {v7}, Lads_mobile_sdk/gu;->a()Z

    move-result v10

    if-eqz v10, :cond_260

    goto :goto_265

    .line 1649
    :cond_260
    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_26d

    .line 1650
    :cond_265
    :goto_265
    invoke-virtual {v0}, Lads_mobile_sdk/ou;->g()Lads_mobile_sdk/iu;

    move-result-object v7

    .line 1651
    iput-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1652
    iput-object v7, v0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;
    :try_end_26d
    .catchall {:try_start_22d .. :try_end_26d} :catchall_24d

    .line 1920
    :goto_26d
    :try_start_26d
    invoke-interface {v1, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1921
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1922
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    new-instance v7, Lads_mobile_sdk/gh3;

    invoke-interface {v0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v10

    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/q11;

    invoke-virtual {v0}, Lads_mobile_sdk/ou;->k()Lads_mobile_sdk/gf3;

    move-result-object v0

    invoke-direct {v7, v10, v8, v0}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;Lads_mobile_sdk/gf3;)V

    iput-object v7, v1, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 1927
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/gu;
    :try_end_28f
    .catchall {:try_start_26d .. :try_end_28f} :catchall_29d

    .line 1930
    :try_start_28f
    instance-of v1, v0, Lads_mobile_sdk/hu;

    if-eqz v1, :cond_2a1

    new-instance v1, Lads_mobile_sdk/q01;

    check-cast v0, Lads_mobile_sdk/hu;

    .line 1931
    iget-object v0, v0, Lads_mobile_sdk/hu;->c:Lads_mobile_sdk/oe3;

    .line 1932
    invoke-direct {v1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_2c5

    :catchall_29d
    move-exception v0

    goto :goto_2ca

    :catch_29f
    move-exception v0

    goto :goto_2cd

    .line 1933
    :cond_2a1
    instance-of v1, v0, Lads_mobile_sdk/iu;

    if-eqz v1, :cond_2d0

    check-cast v0, Lads_mobile_sdk/iu;

    .line 1934
    iget-object v0, v0, Lads_mobile_sdk/iu;->c:Lkotlinx/coroutines/Deferred;

    .line 1935
    iput-object v9, v2, Lads_mobile_sdk/ku;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/ku;->b:Ljava/io/Closeable;

    iput-object v12, v2, Lads_mobile_sdk/ku;->c:Lads_mobile_sdk/rr3;

    iput-object v12, v2, Lads_mobile_sdk/ku;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v2, Lads_mobile_sdk/ku;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v2, Lads_mobile_sdk/ku;->f:Lkotlinx/coroutines/sync/Mutex;

    const/4 v1, 0x4

    iput v1, v2, Lads_mobile_sdk/ku;->i:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_2bc} :catch_29f
    .catchall {:try_start_28f .. :try_end_2bc} :catchall_29d

    if-ne v1, v3, :cond_2bf

    :goto_2be
    return-object v3

    :cond_2bf
    move-object v3, v4

    move-object v2, v9

    .line 1936
    :goto_2c1
    :try_start_2c1
    check-cast v1, Lads_mobile_sdk/v01;
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2c3} :catch_42
    .catchall {:try_start_2c1 .. :try_end_2c3} :catchall_2c8

    move-object v9, v2

    move-object v4, v3

    :goto_2c5
    move-object v3, v4

    move-object v2, v9

    goto :goto_2ec

    :catchall_2c8
    move-exception v0

    goto :goto_2fa

    :goto_2ca
    move-object v10, v9

    move-object v9, v4

    goto :goto_303

    :goto_2cd
    move-object v3, v4

    move-object v2, v9

    goto :goto_2d6

    .line 1937
    :cond_2d0
    :try_start_2d0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2d6} :catch_29f
    .catchall {:try_start_2d0 .. :try_end_2d6} :catchall_29d

    .line 1938
    :goto_2d6
    :try_start_2d6
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1939
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1942
    invoke-virtual {v1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    iput-boolean v11, v4, Lads_mobile_sdk/uj2;->m:Z

    .line 1943
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1944
    new-instance v1, Lads_mobile_sdk/j01;

    const/4 v4, 0x6

    invoke-direct {v1, v0, v12, v12, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    .line 2229
    :goto_2ec
    instance-of v0, v1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_2f6

    .line 2230
    move-object v0, v1

    check-cast v0, Lads_mobile_sdk/i01;

    .line 2231
    invoke-static {v0, v11}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2f6
    .catchall {:try_start_2d6 .. :try_end_2f6} :catchall_2c8

    .line 2232
    :cond_2f6
    invoke-static {v3, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_2f9
    return-object v1

    :goto_2fa
    move-object v10, v2

    move-object v9, v3

    goto :goto_303

    .line 2233
    :goto_2fd
    :try_start_2fd
    invoke-interface {v1, v12}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_301
    .catchall {:try_start_2fd .. :try_end_301} :catchall_29d

    :catchall_301
    move-exception v0

    move-object v10, v9

    .line 2277
    :goto_303
    :try_start_303
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2281
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_33c

    .line 2283
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_319

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_319

    .line 2289
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_319

    :catchall_316
    move-exception v0

    move-object v1, v0

    goto :goto_33d

    .line 2295
    :cond_319
    :goto_319
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_334

    .line 2296
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_32c

    .line 2297
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_326

    throw v0

    .line 2298
    :cond_326
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2299
    :cond_32c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2300
    :cond_334
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2301
    :cond_33c
    throw v0
    :try_end_33d
    .catchall {:try_start_303 .. :try_end_33d} :catchall_316

    .line 2302
    :goto_33d
    :try_start_33d
    throw v1
    :try_end_33e
    .catchall {:try_start_33d .. :try_end_33e} :catchall_33e

    :catchall_33e
    move-exception v0

    invoke-static {v9, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 2
    instance-of v0, p1, Lads_mobile_sdk/lu;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/lu;

    iget v1, v0, Lads_mobile_sdk/lu;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/lu;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/lu;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/lu;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/lu;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 100
    iget v2, v0, Lads_mobile_sdk/lu;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/lu;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/lu;->a:Lads_mobile_sdk/ou;

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

    iget-object p1, p0, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 310
    iput-object p0, v0, Lads_mobile_sdk/lu;->a:Lads_mobile_sdk/ou;

    iput-object p1, v0, Lads_mobile_sdk/lu;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/lu;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4a

    return-object v1

    .line 311
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->l()V

    .line 313
    iget-object v0, p0, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    if-eqz v0, :cond_183

    .line 314
    invoke-virtual {v0}, Lads_mobile_sdk/gu;->a()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 315
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v1

    .line 316
    iget-boolean v1, v1, Lads_mobile_sdk/qu;->d:Z

    if-eqz v1, :cond_183

    goto :goto_63

    :catchall_60
    move-exception p0

    goto/16 :goto_197

    .line 317
    :cond_63
    :goto_63
    iget-object v1, p0, Lads_mobile_sdk/ou;->e:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->O0:Lads_mobile_sdk/s11;

    .line 529
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 530
    new-instance v6, Lads_mobile_sdk/ks3;

    .line 531
    new-instance v7, Lads_mobile_sdk/n03;

    invoke-direct {v7}, Lads_mobile_sdk/n03;-><init>()V

    .line 532
    new-instance v8, Lads_mobile_sdk/tn1;

    invoke-direct {v8}, Lads_mobile_sdk/tn1;-><init>()V

    .line 533
    new-instance v9, Lads_mobile_sdk/m33;

    invoke-direct {v9}, Lads_mobile_sdk/m33;-><init>()V

    .line 534
    new-instance v10, Lads_mobile_sdk/zb;

    invoke-direct {v10}, Lads_mobile_sdk/zb;-><init>()V

    .line 535
    invoke-direct {v6, v7, v8, v9, v10}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 536
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v7

    .line 537
    iget-object v7, v7, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v8, 0x0

    if-nez v7, :cond_105

    .line 538
    invoke-static {v1, v2, v5, v6}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1
    :try_end_91
    .catchall {:try_start_4a .. :try_end_91} :catchall_60

    .line 539
    :try_start_91
    invoke-virtual {v0}, Lads_mobile_sdk/gu;->a()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 540
    sget-object v2, Lads_mobile_sdk/q11;->e:Lads_mobile_sdk/q11;

    goto :goto_9e

    :catchall_9a
    move-exception p0

    goto :goto_c6

    .line 542
    :cond_9c
    sget-object v2, Lads_mobile_sdk/q11;->c:Lads_mobile_sdk/q11;

    .line 544
    :goto_9e
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    new-instance v5, Lads_mobile_sdk/gh3;

    invoke-interface {p0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v6

    invoke-virtual {p0}, Lads_mobile_sdk/ou;->k()Lads_mobile_sdk/gf3;

    move-result-object p0

    invoke-direct {v5, v6, v2, p0}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;Lads_mobile_sdk/gf3;)V

    iput-object v5, v3, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 546
    iget-object p0, v0, Lads_mobile_sdk/hu;->c:Lads_mobile_sdk/oe3;

    .line 547
    instance-of v0, p0, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_c1

    .line 548
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/i01;

    .line 549
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_c1
    .catchall {:try_start_91 .. :try_end_c1} :catchall_9a

    .line 550
    :cond_c1
    :try_start_c1
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_60

    goto/16 :goto_140

    .line 558
    :goto_c6
    :try_start_c6
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 562
    instance-of v0, p0, Lads_mobile_sdk/v24;

    if-nez v0, :cond_fe

    .line 564
    instance-of v0, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_db

    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_db

    .line 570
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_db

    :catchall_d9
    move-exception p0

    goto :goto_ff

    .line 576
    :cond_db
    :goto_db
    instance-of v0, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_f6

    .line 577
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_ee

    .line 578
    instance-of v0, p0, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_e8

    throw p0

    .line 579
    :cond_e8
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 580
    :cond_ee
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 581
    :cond_f6
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 582
    :cond_fe
    throw p0
    :try_end_ff
    .catchall {:try_start_c6 .. :try_end_ff} :catchall_d9

    .line 583
    :goto_ff
    :try_start_ff
    throw p0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_100

    :catchall_100
    move-exception v0

    :try_start_101
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 617
    :cond_105
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1
    :try_end_10d
    .catchall {:try_start_101 .. :try_end_10d} :catchall_60

    .line 618
    :try_start_10d
    invoke-virtual {v0}, Lads_mobile_sdk/gu;->a()Z

    move-result v2

    if-eqz v2, :cond_118

    .line 619
    sget-object v2, Lads_mobile_sdk/q11;->e:Lads_mobile_sdk/q11;

    goto :goto_11a

    :catchall_116
    move-exception p0

    goto :goto_144

    .line 621
    :cond_118
    sget-object v2, Lads_mobile_sdk/q11;->c:Lads_mobile_sdk/q11;

    .line 623
    :goto_11a
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 624
    invoke-virtual {v3}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    new-instance v5, Lads_mobile_sdk/gh3;

    invoke-interface {p0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v6

    invoke-virtual {p0}, Lads_mobile_sdk/ou;->k()Lads_mobile_sdk/gf3;

    move-result-object p0

    invoke-direct {v5, v6, v2, p0}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;Lads_mobile_sdk/gf3;)V

    iput-object v5, v3, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;

    .line 625
    iget-object p0, v0, Lads_mobile_sdk/hu;->c:Lads_mobile_sdk/oe3;

    .line 626
    instance-of v0, p0, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_13d

    .line 627
    move-object v0, p0

    check-cast v0, Lads_mobile_sdk/i01;

    .line 628
    invoke-static {v0, v8}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_13d
    .catchall {:try_start_10d .. :try_end_13d} :catchall_116

    .line 629
    :cond_13d
    :try_start_13d
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_60

    .line 663
    :goto_140
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 664
    :goto_144
    :try_start_144
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 668
    instance-of v0, p0, Lads_mobile_sdk/v24;

    if-nez v0, :cond_17c

    .line 670
    instance-of v0, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_159

    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_159

    .line 676
    invoke-virtual {v1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_159

    :catchall_157
    move-exception p0

    goto :goto_17d

    .line 682
    :cond_159
    :goto_159
    instance-of v0, p0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_174

    .line 683
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_16c

    .line 684
    instance-of v0, p0, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_166

    throw p0

    .line 685
    :cond_166
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 686
    :cond_16c
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 687
    :cond_174
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 688
    :cond_17c
    throw p0
    :try_end_17d
    .catchall {:try_start_144 .. :try_end_17d} :catchall_157

    .line 689
    :goto_17d
    :try_start_17d
    throw p0
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17e

    :catchall_17e
    move-exception v0

    :try_start_17f
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 690
    :cond_183
    iget-object v0, p0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    if-eqz v0, :cond_18d

    .line 691
    invoke-virtual {v0}, Lads_mobile_sdk/gu;->a()Z

    move-result v0

    if-eqz v0, :cond_193

    .line 692
    :cond_18d
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->g()Lads_mobile_sdk/iu;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;
    :try_end_193
    .catchall {:try_start_17f .. :try_end_193} :catchall_60

    .line 962
    :cond_193
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v4

    :goto_197
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static c(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/nu;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/nu;

    iget v1, v0, Lads_mobile_sdk/nu;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/nu;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/nu;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/nu;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/nu;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lads_mobile_sdk/nu;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object p1

    .line 89
    iget-boolean p1, p1, Lads_mobile_sdk/qu;->e:Z

    if-eqz p1, :cond_45

    .line 90
    iput v3, v0, Lads_mobile_sdk/nu;->c:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/ou;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_45

    return-object v1

    .line 92
    :cond_45
    :goto_45
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/hu;Lads_mobile_sdk/iu;)Lads_mobile_sdk/q11;
    .registers 4

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Lads_mobile_sdk/gu;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    sget-object p1, Lads_mobile_sdk/q11;->c:Lads_mobile_sdk/q11;

    return-object p1

    :cond_b
    if-eqz p1, :cond_1e

    .line 6
    invoke-virtual {p1}, Lads_mobile_sdk/gu;->a()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object p1

    .line 7
    iget-boolean p1, p1, Lads_mobile_sdk/qu;->d:Z

    if-eqz p1, :cond_1e

    .line 8
    sget-object p1, Lads_mobile_sdk/q11;->e:Lads_mobile_sdk/q11;

    return-object p1

    :cond_1e
    if-eqz p2, :cond_23

    .line 10
    sget-object p1, Lads_mobile_sdk/q11;->d:Lads_mobile_sdk/q11;

    return-object p1

    .line 12
    :cond_23
    sget-object p1, Lads_mobile_sdk/q11;->b:Lads_mobile_sdk/q11;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/ou;->a(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/iu;
    .registers 8

    .line 192
    new-instance v0, Lads_mobile_sdk/iu;

    .line 193
    iget-object v1, p0, Lads_mobile_sdk/ou;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lads_mobile_sdk/ju;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lads_mobile_sdk/ju;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    .line 194
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 195
    const-string v5, "<this>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "block"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    .line 443
    new-instance v4, Lads_mobile_sdk/vs3;

    invoke-direct {v4, v5, v3}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v1

    .line 444
    iget-object v2, p0, Lads_mobile_sdk/ou;->c:Lads_mobile_sdk/tx;

    .line 445
    sget-object v3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v3}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    move-result-wide v3

    .line 446
    invoke-direct {v0, v1, v2, v3, v4}, Lads_mobile_sdk/iu;-><init>(Lkotlinx/coroutines/Deferred;Lads_mobile_sdk/tx;J)V

    return-object v0
.end method

.method public final i()Lads_mobile_sdk/qu;
    .registers 16

    .line 77
    iget-object v0, p0, Lads_mobile_sdk/ou;->f:Lads_mobile_sdk/ex0;

    invoke-interface {p0}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v1

    .line 78
    const-string v2, "flags"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "signalId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v3, Lads_mobile_sdk/qu;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    sget-object v2, Lads_mobile_sdk/ex0;->H:Lcom/google/gson/JsonObject;

    const-string v4, "gads:caching_signal_source_ttls_ms"

    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "defaultValue"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v7, Lads_mobile_sdk/yr;->i:Lads_mobile_sdk/pr;

    invoke-virtual {v0, v4, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    .line 109
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v8, 0x1e

    sget-object v9, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 110
    const-string v10, "gads:default_signal_ttl"

    invoke-static {v8, v9, v10, v5}, Lads_mobile_sdk/wm2;->a(ILkotlin/time/DurationUnit;Ljava/lang/String;Ljava/lang/String;)Lkotlin/time/Duration;

    move-result-object v8

    .line 111
    sget-object v9, Lads_mobile_sdk/yr;->j:Lads_mobile_sdk/sr;

    invoke-virtual {v0, v10, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/time/Duration;

    invoke-virtual {v8}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v8

    .line 112
    invoke-static {v4, v2, v1, v8, v9}, Lads_mobile_sdk/fk3;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/y11;J)J

    move-result-wide v8

    .line 114
    sget-object v2, Lads_mobile_sdk/ex0;->E:Lcom/google/gson/JsonObject;

    .line 115
    const-string v4, "gads:caching_signal_source_automatic_refreshes"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v4, v2, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;

    .line 117
    invoke-static {v4, v2, v1}, Lads_mobile_sdk/fk3;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/y11;)Z

    move-result v2

    .line 118
    sget-object v4, Lads_mobile_sdk/ex0;->G:Lcom/google/gson/JsonObject;

    const-string v10, "gads:caching_signal_source_refresh_buffers_ms"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v10, v4, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gson/JsonObject;

    .line 120
    sget-object v11, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/4 v12, 0x0

    invoke-static {v12, v11}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v11

    .line 121
    invoke-static {v10, v4, v1, v11, v12}, Lads_mobile_sdk/fk3;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/y11;J)J

    move-result-wide v10

    .line 123
    sget-object v4, Lads_mobile_sdk/ex0;->F:Lcom/google/gson/JsonObject;

    .line 124
    const-string v12, "gads:caching_signal_source_stale_results_enabled"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, v12, v4, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonObject;

    .line 126
    invoke-static {v12, v4, v1}, Lads_mobile_sdk/fk3;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/y11;)Z

    move-result v4

    .line 128
    sget-object v12, Lads_mobile_sdk/ex0;->I:Lcom/google/gson/JsonObject;

    .line 129
    const-string v13, "gads:caching_signal_source_initialization_enabled"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, v13, v12, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonObject;

    .line 131
    invoke-static {v13, v12, v1}, Lads_mobile_sdk/fk3;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/y11;)Z

    move-result v12

    .line 133
    sget-object v13, Lads_mobile_sdk/ex0;->J:Lcom/google/gson/JsonObject;

    .line 134
    const-string v14, "gads:caching_signal_source_background_refresh_enabled"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v14, v13, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 136
    invoke-static {v0, v13, v1}, Lads_mobile_sdk/fk3;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lads_mobile_sdk/y11;)Z

    move-result v0

    move-wide v6, v8

    move v9, v4

    move-wide v4, v6

    move v6, v2

    move-wide v7, v10

    move v10, v12

    move v11, v0

    .line 137
    invoke-direct/range {v3 .. v11}, Lads_mobile_sdk/qu;-><init>(JZJZZZ)V

    return-object v3
.end method

.method public final k()Lads_mobile_sdk/gf3;
    .registers 3

    .line 1
    invoke-static {}, Lads_mobile_sdk/gf3;->v()Lads_mobile_sdk/ff3;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v1, "builder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v1

    .line 4
    iget-boolean v1, v1, Lads_mobile_sdk/qu;->b:Z

    .line 5
    invoke-virtual {v0, v1}, Lads_mobile_sdk/ff3;->a(Z)V

    .line 6
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v1

    .line 7
    iget-boolean v1, v1, Lads_mobile_sdk/qu;->d:Z

    .line 8
    invoke-virtual {v0, v1}, Lads_mobile_sdk/ff3;->b(Z)V

    .line 9
    invoke-virtual {v0}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/gf3;

    return-object v0
.end method

.method public final l()V
    .registers 9

    .line 170
    iget-object v0, p0, Lads_mobile_sdk/ou;->g:Lads_mobile_sdk/f0;

    invoke-virtual {v0}, Lads_mobile_sdk/f0;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v0

    .line 171
    iget-boolean v0, v0, Lads_mobile_sdk/qu;->f:Z

    if-nez v0, :cond_11

    goto :goto_5a

    .line 172
    :cond_11
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v0

    .line 173
    iget-boolean v0, v0, Lads_mobile_sdk/qu;->b:Z

    if-eqz v0, :cond_5a

    .line 174
    iget-object v0, p0, Lads_mobile_sdk/ou;->k:Lkotlinx/coroutines/Job;

    if-nez v0, :cond_5a

    .line 176
    iget-object v0, p0, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    if-eqz v0, :cond_39

    .line 177
    iget-wide v0, v0, Lads_mobile_sdk/gu;->b:J

    .line 178
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v2, p0, Lads_mobile_sdk/ou;->c:Lads_mobile_sdk/tx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 180
    sget-object v4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    goto :goto_3f

    .line 181
    :cond_39
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v0

    .line 182
    iget-wide v0, v0, Lads_mobile_sdk/qu;->a:J

    .line 183
    :goto_3f
    invoke-virtual {p0}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v2

    .line 184
    iget-wide v2, v2, Lads_mobile_sdk/qu;->c:J

    .line 185
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 187
    iget-object v2, p0, Lads_mobile_sdk/ou;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/mu;

    const/4 v3, 0x0

    invoke-direct {v5, v0, v1, p0, v3}, Lads_mobile_sdk/mu;-><init>(JLads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/ou;->k:Lkotlinx/coroutines/Job;

    :cond_5a
    :goto_5a
    return-void
.end method

.method public u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/ou;->c(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/ou;->b(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
