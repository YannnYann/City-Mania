###### Class ads_mobile_sdk.ju (ads_mobile_sdk.ju)
.class public final Lads_mobile_sdk/ju;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Lads_mobile_sdk/ou;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Ljava/io/Closeable;

.field public d:Ljava/lang/Object;

.field public e:Lkotlinx/coroutines/sync/Mutex;

.field public f:I

.field public final synthetic g:Lads_mobile_sdk/ou;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance v0, Lads_mobile_sdk/ju;

    iget-object v1, p0, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ju;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/ju;

    iget-object v1, p0, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ju;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ju;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 193
    iget v0, v1, Lads_mobile_sdk/ju;->f:I

    const-string v3, "exception"

    const/4 v5, 0x6

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_32c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_17
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_29

    move-object v4, v0

    goto/16 :goto_2ae

    :catchall_29
    move-exception v0

    goto/16 :goto_2eb

    .line 194
    :pswitch_2c
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/v01;

    iget-object v8, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_41
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3e

    move-object v4, v0

    goto/16 :goto_244

    :catchall_3e
    move-exception v0

    goto/16 :goto_285

    :catch_41
    move-exception v0

    goto/16 :goto_289

    .line 195
    :pswitch_44
    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_4a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_52
    .catchall {:try_start_4a .. :try_end_4d} :catchall_29

    move-object/from16 v0, p1

    move-object v10, v9

    goto/16 :goto_228

    :catch_52
    move-exception v0

    goto/16 :goto_297

    .line 196
    :pswitch_55
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_61
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_67

    move-object v4, v0

    goto/16 :goto_17f

    :catchall_67
    move-exception v0

    goto/16 :goto_1b8

    .line 197
    :pswitch_6a
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/v01;

    iget-object v8, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_76
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_83
    .catchall {:try_start_76 .. :try_end_79} :catchall_7e

    move-object v11, v10

    move-object v10, v9

    move-object v9, v0

    goto/16 :goto_10b

    :catchall_7e
    move-exception v0

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_1b8

    :catch_83
    move-exception v0

    goto/16 :goto_15d

    .line 198
    :pswitch_86
    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_8c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_93
    .catchall {:try_start_8c .. :try_end_8f} :catchall_67

    move-object/from16 v0, p1

    move-object v10, v9

    goto :goto_ee

    :catch_93
    move-exception v0

    goto/16 :goto_167

    .line 199
    :pswitch_96
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    iget-object v7, v1, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    .line 201
    iget-object v0, v7, Lads_mobile_sdk/ou;->e:Lads_mobile_sdk/g83;

    .line 202
    sget-object v8, Lads_mobile_sdk/s11;->Q0:Lads_mobile_sdk/s11;

    .line 316
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 317
    new-instance v10, Lads_mobile_sdk/ks3;

    .line 318
    new-instance v11, Lads_mobile_sdk/n03;

    invoke-direct {v11}, Lads_mobile_sdk/n03;-><init>()V

    .line 319
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    .line 320
    new-instance v13, Lads_mobile_sdk/m33;

    invoke-direct {v13}, Lads_mobile_sdk/m33;-><init>()V

    .line 321
    new-instance v14, Lads_mobile_sdk/zb;

    invoke-direct {v14}, Lads_mobile_sdk/zb;-><init>()V

    .line 322
    invoke-direct {v10, v11, v12, v13, v14}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 323
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 324
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v12, 0x1

    if-nez v11, :cond_1f8

    .line 325
    invoke-static {v0, v8, v9, v10}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v8

    .line 326
    :try_start_c9
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    new-instance v9, Lads_mobile_sdk/gh3;

    invoke-interface {v7}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v10

    invoke-direct {v9, v10, v6, v5}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v9, v0, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;
    :try_end_dc
    .catchall {:try_start_c9 .. :try_end_dc} :catchall_164

    .line 328
    :try_start_dc
    iput-object v7, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v8, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput v12, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v7, v1}, Lads_mobile_sdk/rh3;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e8} :catch_160
    .catchall {:try_start_dc .. :try_end_e8} :catchall_164

    if-ne v0, v2, :cond_ec

    goto/16 :goto_2ac

    :cond_ec
    move-object v10, v7

    move-object v7, v8

    .line 329
    :goto_ee
    :try_start_ee
    check-cast v0, Lads_mobile_sdk/v01;
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f0} :catch_156
    .catchall {:try_start_ee .. :try_end_f0} :catchall_67

    .line 330
    :try_start_f0
    iget-object v9, v10, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 331
    iput-object v10, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f8} :catch_15a
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_67

    :try_start_f8
    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fa} :catch_156
    .catchall {:try_start_f8 .. :try_end_fa} :catchall_67

    :try_start_fa
    iput-object v9, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fc} :catch_15a
    .catchall {:try_start_fa .. :try_end_fc} :catchall_67

    const/4 v11, 0x2

    :try_start_fd
    iput v11, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v9, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_103} :catch_156
    .catchall {:try_start_fd .. :try_end_103} :catchall_67

    if-ne v11, v2, :cond_107

    goto/16 :goto_2ac

    :cond_107
    move-object v11, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v0

    .line 332
    :goto_10b
    :try_start_10b
    nop

    instance-of v0, v7, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_13a

    .line 333
    new-instance v0, Lads_mobile_sdk/hu;

    .line 334
    move-object v12, v7

    check-cast v12, Lads_mobile_sdk/q01;

    .line 335
    iget-object v12, v12, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 336
    check-cast v12, Lads_mobile_sdk/oe3;

    .line 337
    iget-object v13, v11, Lads_mobile_sdk/ou;->c:Lads_mobile_sdk/tx;

    .line 338
    sget-object v14, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 340
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    invoke-virtual {v11}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v5

    .line 341
    iget-wide v4, v5, Lads_mobile_sdk/qu;->a:J

    .line 342
    invoke-static {v14, v15, v4, v5}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v4

    .line 343
    invoke-direct {v0, v12, v13, v4, v5}, Lads_mobile_sdk/hu;-><init>(Lads_mobile_sdk/oe3;Lads_mobile_sdk/tx;J)V

    goto :goto_13b

    :catchall_138
    move-exception v0

    goto :goto_152

    :cond_13a
    move-object v0, v6

    .line 344
    :goto_13b
    iput-object v0, v11, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    .line 345
    iput-object v6, v11, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 346
    invoke-virtual {v11}, Lads_mobile_sdk/ou;->l()V

    .line 347
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_144
    .catchall {:try_start_10b .. :try_end_144} :catchall_138

    .line 460
    :try_start_144
    invoke-interface {v9, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto/16 :goto_1a2

    :catchall_149
    move-exception v0

    move-object v7, v8

    move-object v8, v10

    goto/16 :goto_1b8

    :catch_14e
    move-exception v0

    move-object v9, v10

    move-object v10, v11

    goto :goto_15d

    .line 461
    :goto_152
    invoke-interface {v9, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_156} :catch_14e
    .catchall {:try_start_144 .. :try_end_156} :catchall_149

    :catch_156
    move-exception v0

    move-object v9, v8

    move-object v8, v7

    goto :goto_15d

    :catch_15a
    move-exception v0

    :goto_15b
    move-object v9, v10

    goto :goto_167

    :goto_15d
    move-object v7, v8

    move-object v8, v9

    goto :goto_15b

    :catch_160
    move-exception v0

    move-object v9, v7

    move-object v7, v8

    goto :goto_167

    :catchall_164
    move-exception v0

    move-object v7, v8

    goto :goto_1b8

    .line 462
    :goto_167
    :try_start_167
    iget-object v4, v9, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 463
    iput-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x3

    iput v5, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v4, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_17a
    .catchall {:try_start_167 .. :try_end_17a} :catchall_67

    if-ne v5, v2, :cond_17e

    goto/16 :goto_2ac

    :cond_17e
    move-object v2, v0

    .line 464
    :goto_17f
    :try_start_17f
    iput-object v6, v9, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 465
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_183
    .catchall {:try_start_17f .. :try_end_183} :catchall_1b3

    .line 586
    :try_start_183
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 587
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lads_mobile_sdk/uj2;->m:Z

    if-eqz v2, :cond_199

    .line 592
    invoke-virtual {v0, v2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 593
    :cond_199
    new-instance v0, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v6, v6, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_19f
    .catchall {:try_start_183 .. :try_end_19f} :catchall_67

    move-object v10, v8

    move-object v8, v7

    move-object v7, v0

    .line 714
    :goto_1a2
    :try_start_1a2
    nop

    instance-of v0, v7, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_1ae

    .line 715
    move-object v0, v7

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 716
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1ae
    .catchall {:try_start_1a2 .. :try_end_1ae} :catchall_149

    .line 717
    :cond_1ae
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_2e5

    :catchall_1b3
    move-exception v0

    .line 741
    :try_start_1b4
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_1b8
    .catchall {:try_start_1b4 .. :try_end_1b8} :catchall_67

    .line 748
    :goto_1b8
    :try_start_1b8
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 752
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1f1

    .line 754
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1ce

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1ce

    .line 760
    invoke-virtual {v8, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1ce

    :catchall_1cb
    move-exception v0

    move-object v2, v0

    goto :goto_1f2

    .line 766
    :cond_1ce
    :goto_1ce
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1e9

    .line 767
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1e1

    .line 768
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1db

    throw v0

    .line 769
    :cond_1db
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 770
    :cond_1e1
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 771
    :cond_1e9
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 772
    :cond_1f1
    throw v0
    :try_end_1f2
    .catchall {:try_start_1b8 .. :try_end_1f2} :catchall_1cb

    .line 773
    :goto_1f2
    :try_start_1f2
    throw v2
    :try_end_1f3
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_1f3

    :catchall_1f3
    move-exception v0

    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 830
    :cond_1f8
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v8, v0, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 831
    :try_start_200
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    new-instance v5, Lads_mobile_sdk/gh3;

    invoke-interface {v7}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v8

    const/4 v9, 0x6

    invoke-direct {v5, v8, v6, v9}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v5, v0, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;
    :try_end_214
    .catchall {:try_start_200 .. :try_end_214} :catchall_294

    .line 833
    :try_start_214
    iput-object v7, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v4, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    const/4 v0, 0x4

    iput v0, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v7, v1}, Lads_mobile_sdk/rh3;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_221} :catch_28f
    .catchall {:try_start_214 .. :try_end_221} :catchall_294

    if-ne v0, v2, :cond_225

    goto/16 :goto_2ac

    :cond_225
    move-object v8, v4

    move-object v10, v7

    move-object v7, v8

    .line 834
    :goto_228
    :try_start_228
    check-cast v0, Lads_mobile_sdk/v01;

    .line 835
    iget-object v4, v10, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 836
    iput-object v10, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x5

    iput v5, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v4, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_23d} :catch_28d
    .catchall {:try_start_228 .. :try_end_23d} :catchall_29

    if-ne v5, v2, :cond_241

    goto/16 :goto_2ac

    :cond_241
    move-object v9, v8

    move-object v8, v7

    move-object v7, v0

    .line 837
    :goto_244
    :try_start_244
    nop

    instance-of v0, v7, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_273

    .line 838
    new-instance v0, Lads_mobile_sdk/hu;

    .line 839
    move-object v5, v7

    check-cast v5, Lads_mobile_sdk/q01;

    .line 840
    iget-object v5, v5, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 841
    check-cast v5, Lads_mobile_sdk/oe3;

    .line 842
    iget-object v11, v10, Lads_mobile_sdk/ou;->c:Lads_mobile_sdk/tx;

    .line 843
    sget-object v12, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 845
    sget-object v14, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v12, v13, v14}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-virtual {v10}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v14

    .line 846
    iget-wide v14, v14, Lads_mobile_sdk/qu;->a:J

    .line 847
    invoke-static {v12, v13, v14, v15}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v12

    .line 848
    invoke-direct {v0, v5, v11, v12, v13}, Lads_mobile_sdk/hu;-><init>(Lads_mobile_sdk/oe3;Lads_mobile_sdk/tx;J)V

    goto :goto_274

    :catchall_271
    move-exception v0

    goto :goto_281

    :cond_273
    move-object v0, v6

    .line 849
    :goto_274
    iput-object v0, v10, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    .line 850
    iput-object v6, v10, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 851
    invoke-virtual {v10}, Lads_mobile_sdk/ou;->l()V

    .line 852
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27d
    .catchall {:try_start_244 .. :try_end_27d} :catchall_271

    .line 965
    :try_start_27d
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_2d1

    .line 966
    :goto_281
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_285} :catch_41
    .catchall {:try_start_27d .. :try_end_285} :catchall_3e

    :goto_285
    move-object v7, v8

    move-object v4, v9

    goto/16 :goto_2ec

    :goto_289
    move-object v7, v8

    move-object v8, v9

    :goto_28b
    move-object v9, v10

    goto :goto_297

    :catch_28d
    move-exception v0

    goto :goto_28b

    :catch_28f
    move-exception v0

    move-object v8, v4

    move-object v9, v7

    move-object v7, v8

    goto :goto_297

    :catchall_294
    move-exception v0

    move-object v7, v4

    goto :goto_2ec

    .line 967
    :goto_297
    :try_start_297
    iget-object v4, v9, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 968
    iput-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x6

    iput v5, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v4, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2aa
    .catchall {:try_start_297 .. :try_end_2aa} :catchall_29

    if-ne v5, v2, :cond_2ad

    :goto_2ac
    return-object v2

    :cond_2ad
    move-object v2, v0

    .line 969
    :goto_2ae
    :try_start_2ae
    iput-object v6, v9, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 970
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b2
    .catchall {:try_start_2ae .. :try_end_2b2} :catchall_2e6

    .line 1091
    :try_start_2b2
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1092
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lads_mobile_sdk/uj2;->m:Z

    if-eqz v2, :cond_2c8

    .line 1097
    invoke-virtual {v0, v2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1098
    :cond_2c8
    new-instance v0, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v6, v6, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_2ce
    .catchall {:try_start_2b2 .. :try_end_2ce} :catchall_29

    move-object v9, v8

    move-object v8, v7

    move-object v7, v0

    .line 1256
    :goto_2d1
    :try_start_2d1
    nop

    instance-of v0, v7, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_2e2

    .line 1257
    move-object v0, v7

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 1258
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2dd
    .catchall {:try_start_2d1 .. :try_end_2dd} :catchall_2de

    goto :goto_2e2

    :catchall_2de
    move-exception v0

    move-object v7, v8

    move-object v8, v9

    goto :goto_2eb

    .line 1259
    :cond_2e2
    :goto_2e2
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_2e5
    return-object v7

    :catchall_2e6
    move-exception v0

    .line 1260
    :try_start_2e7
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_2eb
    .catchall {:try_start_2e7 .. :try_end_2eb} :catchall_29

    :goto_2eb
    move-object v4, v8

    .line 1304
    :goto_2ec
    :try_start_2ec
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1308
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_325

    .line 1310
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_302

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_302

    .line 1316
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_302

    :catchall_2ff
    move-exception v0

    move-object v2, v0

    goto :goto_326

    .line 1322
    :cond_302
    :goto_302
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_31d

    .line 1323
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_315

    .line 1324
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_30f

    throw v0

    .line 1325
    :cond_30f
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1326
    :cond_315
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1327
    :cond_31d
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1328
    :cond_325
    throw v0
    :try_end_326
    .catchall {:try_start_2ec .. :try_end_326} :catchall_2ff

    .line 1329
    :goto_326
    :try_start_326
    throw v2
    :try_end_327
    .catchall {:try_start_326 .. :try_end_327} :catchall_327

    :catchall_327
    move-exception v0

    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_32c
    .packed-switch 0x0
        :pswitch_96
        :pswitch_86
        :pswitch_6a
        :pswitch_55
        :pswitch_44
        :pswitch_2c
        :pswitch_17
    .end packed-switch
.end method
