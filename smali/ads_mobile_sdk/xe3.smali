###### Class ads_mobile_sdk.xe3 (ads_mobile_sdk.xe3)
.class public final Lads_mobile_sdk/xe3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lads_mobile_sdk/ex0;

.field public final c:Lads_mobile_sdk/tx;

.field public final d:Lads_mobile_sdk/g83;

.field public final e:Lads_mobile_sdk/cw2;

.field public f:Z

.field public final g:Lkotlinx/coroutines/sync/Mutex;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;Lads_mobile_sdk/tx;Lads_mobile_sdk/g83;Lads_mobile_sdk/dw2;)V
    .registers 7

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalComponentProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/xe3;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/xe3;->b:Lads_mobile_sdk/ex0;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/xe3;->c:Lads_mobile_sdk/tx;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/xe3;->d:Lads_mobile_sdk/g83;

    .line 11
    iput-object p5, p0, Lads_mobile_sdk/xe3;->e:Lads_mobile_sdk/cw2;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 16
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    .line 22
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static b(Lads_mobile_sdk/xe3;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    instance-of v3, v2, Lads_mobile_sdk/qe3;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/qe3;

    iget v4, v3, Lads_mobile_sdk/qe3;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/qe3;->e:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lads_mobile_sdk/qe3;

    invoke-direct {v3, v0, v2}, Lads_mobile_sdk/qe3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lads_mobile_sdk/qe3;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 65
    iget v5, v3, Lads_mobile_sdk/qe3;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_67

    if-eq v5, v10, :cond_5f

    if-eq v5, v9, :cond_53

    if-eq v5, v8, :cond_4a

    if-ne v5, v7, :cond_42

    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_3a
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    goto/16 :goto_160

    :catchall_3f
    move-exception v0

    goto/16 :goto_170

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4a
    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_4e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_3f

    goto/16 :goto_14a

    .line 67
    :cond_53
    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_57
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5c

    goto/16 :goto_ce

    :catchall_5c
    move-exception v0

    goto/16 :goto_de

    .line 68
    :cond_5f
    iget-object v1, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iget-object v3, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    :try_start_63
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_5c

    goto :goto_b8

    .line 69
    :cond_67
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object v2, v0, Lads_mobile_sdk/xe3;->d:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->E0:Lads_mobile_sdk/s11;

    .line 216
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 217
    new-instance v13, Lads_mobile_sdk/ks3;

    .line 218
    new-instance v14, Lads_mobile_sdk/n03;

    invoke-direct {v14}, Lads_mobile_sdk/n03;-><init>()V

    .line 219
    new-instance v15, Lads_mobile_sdk/tn1;

    invoke-direct {v15}, Lads_mobile_sdk/tn1;-><init>()V

    .line 220
    new-instance v7, Lads_mobile_sdk/m33;

    invoke-direct {v7}, Lads_mobile_sdk/m33;-><init>()V

    .line 221
    new-instance v8, Lads_mobile_sdk/zb;

    invoke-direct {v8}, Lads_mobile_sdk/zb;-><init>()V

    .line 222
    invoke-direct {v13, v14, v15, v7, v8}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 223
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v7

    .line 224
    iget-object v7, v7, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v7, :cond_121

    .line 225
    invoke-static {v2, v5, v12, v13}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 226
    :try_start_97
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 227
    iget-object v5, v5, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 228
    iget-object v5, v5, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 229
    sget-object v7, Lads_mobile_sdk/x11;->i:Lads_mobile_sdk/x11;

    .line 230
    iput-object v7, v5, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 232
    iget-boolean v5, v0, Lads_mobile_sdk/xe3;->f:Z

    if-eqz v5, :cond_bd

    .line 233
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iput v10, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b1
    .catchall {:try_start_97 .. :try_end_b1} :catchall_bb

    if-ne v0, v4, :cond_b5

    goto/16 :goto_15c

    :cond_b5
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 234
    :goto_b8
    :try_start_b8
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_5c

    goto :goto_d0

    :catchall_bb
    move-exception v0

    goto :goto_e0

    .line 236
    :cond_bd
    :try_start_bd
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    iput v9, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c7
    .catchall {:try_start_bd .. :try_end_c7} :catchall_bb

    if-ne v0, v4, :cond_cb

    goto/16 :goto_15c

    :cond_cb
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 237
    :goto_ce
    :try_start_ce
    check-cast v2, Lads_mobile_sdk/v01;

    .line 390
    :goto_d0
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_da

    .line 391
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    .line 392
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_da
    .catchall {:try_start_ce .. :try_end_da} :catchall_5c

    .line 393
    :cond_da
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_de
    move-object v2, v3

    goto :goto_e1

    :goto_e0
    move-object v1, v2

    .line 401
    :goto_e1
    :try_start_e1
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 405
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_11a

    .line 407
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_f7

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_f7

    .line 413
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_f7

    :catchall_f4
    move-exception v0

    move-object v2, v0

    goto :goto_11b

    .line 419
    :cond_f7
    :goto_f7
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_112

    .line 420
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10a

    .line 421
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_104

    throw v0

    .line 422
    :cond_104
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 423
    :cond_10a
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 424
    :cond_112
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 425
    :cond_11a
    throw v0
    :try_end_11b
    .catchall {:try_start_e1 .. :try_end_11b} :catchall_f4

    .line 426
    :goto_11b
    :try_start_11b
    throw v2
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_11c

    :catchall_11c
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 460
    :cond_121
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 461
    :try_start_129
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 462
    iget-object v5, v5, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    .line 463
    iget-object v5, v5, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    .line 464
    sget-object v7, Lads_mobile_sdk/x11;->i:Lads_mobile_sdk/x11;

    .line 465
    iput-object v7, v5, Lads_mobile_sdk/tn1;->d:Lads_mobile_sdk/x11;

    .line 467
    iget-boolean v5, v0, Lads_mobile_sdk/xe3;->f:Z

    if-eqz v5, :cond_14f

    .line 468
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    const/4 v5, 0x3

    iput v5, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_144
    .catchall {:try_start_129 .. :try_end_144} :catchall_14d

    if-ne v0, v4, :cond_147

    goto :goto_15c

    :cond_147
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 469
    :goto_14a
    :try_start_14a
    check-cast v2, Lads_mobile_sdk/v01;
    :try_end_14c
    .catchall {:try_start_14a .. :try_end_14c} :catchall_3f

    goto :goto_162

    :catchall_14d
    move-exception v0

    goto :goto_172

    .line 471
    :cond_14f
    :try_start_14f
    iput-object v2, v3, Lads_mobile_sdk/qe3;->a:Lads_mobile_sdk/rr3;

    iput-object v2, v3, Lads_mobile_sdk/qe3;->b:Lads_mobile_sdk/rr3;

    const/4 v5, 0x4

    iput v5, v3, Lads_mobile_sdk/qe3;->e:I

    invoke-virtual {v0, v1, v3}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15a
    .catchall {:try_start_14f .. :try_end_15a} :catchall_14d

    if-ne v0, v4, :cond_15d

    :goto_15c
    return-object v4

    :cond_15d
    move-object v1, v2

    move-object v3, v1

    move-object v2, v0

    .line 472
    :goto_160
    :try_start_160
    check-cast v2, Lads_mobile_sdk/v01;

    .line 662
    :goto_162
    instance-of v0, v2, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_16c

    .line 663
    move-object v0, v2

    check-cast v0, Lads_mobile_sdk/i01;

    .line 664
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_16c
    .catchall {:try_start_160 .. :try_end_16c} :catchall_3f

    .line 665
    :cond_16c
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_170
    move-object v2, v3

    goto :goto_173

    :goto_172
    move-object v1, v2

    .line 673
    :goto_173
    :try_start_173
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 677
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_1ac

    .line 679
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_189

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_189

    .line 685
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_189

    :catchall_186
    move-exception v0

    move-object v2, v0

    goto :goto_1ad

    .line 691
    :cond_189
    :goto_189
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1a4

    .line 692
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_19c

    .line 693
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_196

    throw v0

    .line 694
    :cond_196
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 695
    :cond_19c
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 696
    :cond_1a4
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 697
    :cond_1ac
    throw v0
    :try_end_1ad
    .catchall {:try_start_173 .. :try_end_1ad} :catchall_186

    .line 698
    :goto_1ad
    :try_start_1ad
    throw v2
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ae

    :catchall_1ae
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .registers 5

    .line 4240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accept_3p_cookie"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4243
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    const-string v1, "requester_type_6"

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 4244
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    .line 4245
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;

    move-result-object p1

    .line 4246
    iget-object v0, p0, Lads_mobile_sdk/xe3;->e:Lads_mobile_sdk/cw2;

    .line 4247
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/rf3;

    .line 4248
    invoke-interface {v0, p1}, Lads_mobile_sdk/rf3;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Lads_mobile_sdk/rf3;

    move-result-object v0

    .line 4249
    invoke-interface {v0, p1}, Lads_mobile_sdk/rf3;->a(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)Lads_mobile_sdk/rf3;

    move-result-object p1

    .line 4250
    invoke-interface {p1}, Lads_mobile_sdk/rf3;->c()Lads_mobile_sdk/rf3;

    move-result-object p1

    .line 4251
    invoke-interface {p1}, Lads_mobile_sdk/rf3;->b()Lads_mobile_sdk/rf3;

    move-result-object p1

    .line 4252
    invoke-interface {p1}, Lads_mobile_sdk/rf3;->a()Lads_mobile_sdk/sf3;

    move-result-object p1

    .line 4253
    invoke-interface {p1}, Lads_mobile_sdk/sf3;->a()Lads_mobile_sdk/eh3;

    move-result-object p1

    .line 4254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4255
    invoke-static {p1, p2}, Lads_mobile_sdk/eh3;->a(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 699
    instance-of v2, v0, Lads_mobile_sdk/re3;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/re3;

    iget v3, v2, Lads_mobile_sdk/re3;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/re3;->g:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lads_mobile_sdk/re3;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/re3;-><init>(Lads_mobile_sdk/xe3;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v2, Lads_mobile_sdk/re3;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 774
    iget v4, v2, Lads_mobile_sdk/re3;->g:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_46

    if-eq v4, v6, :cond_39

    if-ne v4, v5, :cond_31

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-boolean v4, v2, Lads_mobile_sdk/re3;->d:Z

    iget-object v8, v2, Lads_mobile_sdk/re3;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v9, v2, Lads_mobile_sdk/re3;->b:Lkotlinx/coroutines/CompletableDeferred;

    iget-object v10, v2, Lads_mobile_sdk/re3;->a:Lads_mobile_sdk/xe3;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v4

    goto :goto_64

    :cond_46
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 775
    invoke-static {v7, v6, v7}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v9

    .line 776
    iget-object v8, v1, Lads_mobile_sdk/xe3;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 989
    iput-object v1, v2, Lads_mobile_sdk/re3;->a:Lads_mobile_sdk/xe3;

    iput-object v9, v2, Lads_mobile_sdk/re3;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput-object v8, v2, Lads_mobile_sdk/re3;->c:Lkotlinx/coroutines/sync/Mutex;

    move/from16 v0, p1

    iput-boolean v0, v2, Lads_mobile_sdk/re3;->d:Z

    iput v6, v2, Lads_mobile_sdk/re3;->g:I

    invoke-interface {v8, v7, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_63

    goto/16 :goto_126

    :cond_63
    move-object v10, v1

    .line 990
    :goto_64
    :try_start_64
    iget-object v4, v10, Lads_mobile_sdk/xe3;->i:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/pe3;
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_cc

    const-string v11, "build(...)"

    const-string v12, "builder"

    const-string v13, "newBuilder(...)"

    if-eqz v4, :cond_ce

    .line 991
    :try_start_78
    sget-object v14, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v14, v4, Lads_mobile_sdk/pe3;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 993
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_cc

    move-object/from16 p1, v8

    :try_start_8b
    iget-wide v7, v4, Lads_mobile_sdk/pe3;->d:J

    invoke-static {v14, v15, v7, v8}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v7

    if-ltz v7, :cond_96

    move-object/from16 v8, p1

    goto :goto_ce

    .line 994
    :cond_96
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    .line 1207
    invoke-static {}, Lads_mobile_sdk/af3;->v()Lads_mobile_sdk/ze3;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1208
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v3, v0}, Lads_mobile_sdk/ze3;->b(Z)V

    .line 1210
    invoke-virtual {v3, v6}, Lads_mobile_sdk/ze3;->a(Z)V

    .line 1211
    invoke-virtual {v3}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/af3;

    .line 1212
    iput-object v0, v2, Lads_mobile_sdk/uj2;->B:Lads_mobile_sdk/af3;

    .line 1213
    iget-object v0, v4, Lads_mobile_sdk/pe3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1214
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1215
    iget-object v0, v4, Lads_mobile_sdk/pe3;->b:Lads_mobile_sdk/v01;
    :try_end_c0
    .catchall {:try_start_8b .. :try_end_c0} :catchall_c7

    move-object/from16 v8, p1

    const/4 v5, 0x0

    .line 1216
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_c7
    move-exception v0

    move-object/from16 v8, p1

    :goto_ca
    const/4 v5, 0x0

    goto :goto_128

    :catchall_cc
    move-exception v0

    goto :goto_ca

    .line 1217
    :cond_ce
    :goto_ce
    :try_start_ce
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    invoke-virtual {v4}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v4

    .line 1425
    invoke-static {}, Lads_mobile_sdk/af3;->v()Lads_mobile_sdk/ze3;

    move-result-object v6

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1426
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v6, v0}, Lads_mobile_sdk/ze3;->b(Z)V

    const/4 v7, 0x0

    .line 1428
    invoke-virtual {v6, v7}, Lads_mobile_sdk/ze3;->a(Z)V

    .line 1429
    invoke-virtual {v6}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lads_mobile_sdk/af3;

    .line 1430
    iput-object v6, v4, Lads_mobile_sdk/uj2;->B:Lads_mobile_sdk/af3;

    .line 1435
    iget-object v4, v10, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_105

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    :cond_105
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1437
    iget-object v6, v10, Lads_mobile_sdk/xe3;->j:Ljava/util/LinkedHashMap;

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_113
    .catchall {:try_start_ce .. :try_end_113} :catchall_cc

    const/4 v5, 0x0

    .line 1637
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1638
    iput-object v5, v2, Lads_mobile_sdk/re3;->a:Lads_mobile_sdk/xe3;

    iput-object v5, v2, Lads_mobile_sdk/re3;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput-object v5, v2, Lads_mobile_sdk/re3;->c:Lkotlinx/coroutines/sync/Mutex;

    const/4 v0, 0x2

    iput v0, v2, Lads_mobile_sdk/re3;->g:I

    invoke-interface {v9, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_127

    :goto_126
    return-object v3

    :cond_127
    return-object v0

    .line 1836
    :goto_128
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method
