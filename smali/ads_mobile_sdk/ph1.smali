###### Class ads_mobile_sdk.ph1 (ads_mobile_sdk.ph1)
.class public final Lads_mobile_sdk/ph1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Lads_mobile_sdk/lh1;

.field public d:Lads_mobile_sdk/uj2;

.field public e:I

.field public final synthetic f:Lads_mobile_sdk/th1;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/th1;ILkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    iput p2, p0, Lads_mobile_sdk/ph1;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lads_mobile_sdk/ph1;

    iget-object v0, p0, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    iget v1, p0, Lads_mobile_sdk/ph1;->g:I

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ph1;-><init>(Lads_mobile_sdk/th1;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ph1;

    iget-object v0, p0, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    iget v1, p0, Lads_mobile_sdk/ph1;->g:I

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ph1;-><init>(Lads_mobile_sdk/th1;ILkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ph1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v2, v1, Lads_mobile_sdk/ph1;->e:I

    const-string v3, "build(...)"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v5, :cond_2e

    if-ne v2, v4, :cond_26

    iget-object v0, v1, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    iget-object v2, v1, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    iget-object v4, v1, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    :try_start_1a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_22

    move-object v10, v1

    move-object/from16 v16, v3

    goto/16 :goto_27e

    :catchall_22
    move-exception v0

    move-object v10, v1

    goto/16 :goto_2a7

    .line 62
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    iget-object v0, v1, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    iget-object v2, v1, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    iget-object v4, v1, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    :try_start_36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3e

    move-object v10, v1

    move-object/from16 v16, v3

    goto/16 :goto_156

    :catchall_3e
    move-exception v0

    move-object v10, v1

    goto/16 :goto_16e

    .line 63
    :cond_42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iget-object v2, v1, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    .line 65
    iget-object v7, v2, Lads_mobile_sdk/th1;->g:Lads_mobile_sdk/g83;

    .line 66
    sget-object v8, Lads_mobile_sdk/s11;->N0:Lads_mobile_sdk/s11;

    .line 67
    iget v9, v1, Lads_mobile_sdk/ph1;->g:I

    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 108
    new-instance v11, Lads_mobile_sdk/ks3;

    .line 109
    new-instance v12, Lads_mobile_sdk/n03;

    invoke-direct {v12}, Lads_mobile_sdk/n03;-><init>()V

    .line 110
    new-instance v13, Lads_mobile_sdk/tn1;

    invoke-direct {v13}, Lads_mobile_sdk/tn1;-><init>()V

    .line 111
    new-instance v14, Lads_mobile_sdk/m33;

    invoke-direct {v14}, Lads_mobile_sdk/m33;-><init>()V

    .line 112
    new-instance v15, Lads_mobile_sdk/zb;

    invoke-direct {v15}, Lads_mobile_sdk/zb;-><init>()V

    .line 113
    invoke-direct {v11, v12, v13, v14, v15}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 114
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v12

    .line 115
    iget-object v12, v12, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v13, "install_version"

    const-string v14, "install_begin_timestamp_server_seconds"

    const-string v15, "referrer_click_timestamp_server_seconds"

    const-string v6, "google_play_instant"

    const-string v4, "install_begin_timestamp_seconds"

    const-string v5, "referrer_click_timestamp_seconds"

    move-object/from16 p1, v12

    const-string v12, "install_referrer"

    move-object/from16 v16, v3

    const-string v3, "builder"

    move-object/from16 v17, v0

    const-string v0, "newBuilder(...)"

    const-string v18, ""

    const-string v1, "value"

    if-nez p1, :cond_1b1

    .line 116
    invoke-static {v7, v8, v10, v11}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v7

    .line 117
    :try_start_92
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    .line 160
    invoke-static {}, Lads_mobile_sdk/kh1;->v()Lads_mobile_sdk/ih1;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lads_mobile_sdk/lh1;

    .line 192
    invoke-direct {v0, v10}, Lads_mobile_sdk/lh1;-><init>(Lads_mobile_sdk/ih1;)V

    const/4 v3, -0x1

    if-eq v9, v3, :cond_d1

    if-eqz v9, :cond_ce

    const/4 v3, 0x1

    if-eq v9, v3, :cond_cb

    const/4 v3, 0x2

    if-eq v9, v3, :cond_c8

    const/4 v3, 0x3

    if-eq v9, v3, :cond_c5

    const/4 v3, 0x4

    if-eq v9, v3, :cond_c2

    .line 193
    sget-object v3, Lads_mobile_sdk/jh1;->b:Lads_mobile_sdk/jh1;

    goto :goto_d3

    :catchall_bd
    move-exception v0

    move-object/from16 v10, p0

    goto/16 :goto_170

    .line 194
    :cond_c2
    sget-object v3, Lads_mobile_sdk/jh1;->g:Lads_mobile_sdk/jh1;

    goto :goto_d3

    .line 195
    :cond_c5
    sget-object v3, Lads_mobile_sdk/jh1;->f:Lads_mobile_sdk/jh1;

    goto :goto_d3

    .line 196
    :cond_c8
    sget-object v3, Lads_mobile_sdk/jh1;->e:Lads_mobile_sdk/jh1;

    goto :goto_d3

    .line 197
    :cond_cb
    sget-object v3, Lads_mobile_sdk/jh1;->d:Lads_mobile_sdk/jh1;

    goto :goto_d3

    .line 198
    :cond_ce
    sget-object v3, Lads_mobile_sdk/jh1;->c:Lads_mobile_sdk/jh1;

    goto :goto_d3

    .line 203
    :cond_d1
    sget-object v3, Lads_mobile_sdk/jh1;->h:Lads_mobile_sdk/jh1;

    .line 204
    :goto_d3
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v10, v3}, Lads_mobile_sdk/ih1;->a(Lads_mobile_sdk/jh1;)V

    .line 369
    iget-object v3, v2, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    .line 370
    invoke-virtual {v3}, Lads_mobile_sdk/eh1;->a()Lads_mobile_sdk/f23;

    move-result-object v3

    if-nez v9, :cond_150

    if-eqz v3, :cond_150

    .line 371
    iget-object v9, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v9, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_ed

    move-object/from16 v9, v18

    .line 373
    :cond_ed
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v10, v9}, Lads_mobile_sdk/ih1;->a(Ljava/lang/String;)V

    .line 419
    iget-object v9, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v9, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 420
    invoke-virtual {v10, v11, v12}, Lads_mobile_sdk/ih1;->c(J)V

    .line 421
    iget-object v5, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 422
    invoke-virtual {v10, v4, v5}, Lads_mobile_sdk/ih1;->a(J)V

    .line 423
    iget-object v4, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 424
    invoke-virtual {v10, v4}, Lads_mobile_sdk/ih1;->a(Z)V

    .line 425
    iget-object v4, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 426
    invoke-virtual {v10, v4, v5}, Lads_mobile_sdk/ih1;->d(J)V

    .line 427
    iget-object v4, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 428
    invoke-virtual {v10, v4, v5}, Lads_mobile_sdk/ih1;->b(J)V

    .line 429
    iget-object v3, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12a

    move-object/from16 v3, v18

    .line 431
    :cond_12a
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v10, v3}, Lads_mobile_sdk/ih1;->b(Ljava/lang/String;)V

    .line 579
    iget-object v1, v2, Lads_mobile_sdk/th1;->f:Lads_mobile_sdk/zd3;

    .line 580
    sget-object v2, Lads_mobile_sdk/nh1;->a:Lads_mobile_sdk/nh1;
    :try_end_134
    .catchall {:try_start_92 .. :try_end_134} :catchall_bd

    move-object/from16 v10, p0

    :try_start_136
    iput-object v7, v10, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    iput-object v7, v10, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iput-object v0, v10, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    iput-object v8, v10, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    const/4 v3, 0x1

    iput v3, v10, Lads_mobile_sdk/ph1;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    invoke-static {v1, v2, v10}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_148
    .catchall {:try_start_136 .. :try_end_148} :catchall_14e

    move-object/from16 v11, v17

    if-ne v1, v11, :cond_152

    goto/16 :goto_278

    :catchall_14e
    move-exception v0

    goto :goto_170

    :cond_150
    move-object/from16 v10, p0

    :cond_152
    move-object v2, v0

    move-object v4, v7

    move-object v5, v4

    move-object v0, v8

    .line 582
    :goto_156
    :try_start_156
    iget-object v1, v2, Lads_mobile_sdk/lh1;->a:Lads_mobile_sdk/ih1;

    .line 583
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    move-object/from16 v7, v16

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/kh1;

    .line 584
    iput-object v1, v0, Lads_mobile_sdk/uj2;->J:Lads_mobile_sdk/kh1;

    .line 600
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_167
    .catchall {:try_start_156 .. :try_end_167} :catchall_16d

    const/4 v0, 0x0

    .line 632
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_293

    :catchall_16d
    move-exception v0

    :goto_16e
    move-object v7, v5

    goto :goto_171

    :goto_170
    move-object v4, v7

    .line 642
    :goto_171
    :try_start_171
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 646
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_1aa

    .line 648
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_187

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_187

    .line 654
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_187

    :catchall_184
    move-exception v0

    move-object v1, v0

    goto :goto_1ab

    .line 660
    :cond_187
    :goto_187
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1a2

    .line 661
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19a

    .line 662
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_194

    throw v0

    .line 663
    :cond_194
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 664
    :cond_19a
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 665
    :cond_1a2
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 666
    :cond_1aa
    throw v0
    :try_end_1ab
    .catchall {:try_start_171 .. :try_end_1ab} :catchall_184

    .line 667
    :goto_1ab
    :try_start_1ab
    throw v1
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_1ac

    :catchall_1ac
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1b1
    move-object/from16 v10, p0

    move-object/from16 v11, v17

    .line 703
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {v8, v7, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v7

    .line 704
    :try_start_1be
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    .line 747
    invoke-static {}, Lads_mobile_sdk/kh1;->v()Lads_mobile_sdk/ih1;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    new-instance v0, Lads_mobile_sdk/lh1;

    .line 779
    invoke-direct {v0, v11}, Lads_mobile_sdk/lh1;-><init>(Lads_mobile_sdk/ih1;)V

    const/4 v3, -0x1

    if-eq v9, v3, :cond_1fb

    if-eqz v9, :cond_1f8

    const/4 v3, 0x1

    if-eq v9, v3, :cond_1f5

    const/4 v3, 0x2

    if-eq v9, v3, :cond_1f2

    const/4 v3, 0x3

    if-eq v9, v3, :cond_1ef

    const/4 v3, 0x4

    if-eq v9, v3, :cond_1ec

    .line 780
    sget-object v3, Lads_mobile_sdk/jh1;->b:Lads_mobile_sdk/jh1;

    goto :goto_1fd

    :catchall_1e9
    move-exception v0

    goto/16 :goto_2a9

    .line 781
    :cond_1ec
    sget-object v3, Lads_mobile_sdk/jh1;->g:Lads_mobile_sdk/jh1;

    goto :goto_1fd

    .line 782
    :cond_1ef
    sget-object v3, Lads_mobile_sdk/jh1;->f:Lads_mobile_sdk/jh1;

    goto :goto_1fd

    .line 783
    :cond_1f2
    sget-object v3, Lads_mobile_sdk/jh1;->e:Lads_mobile_sdk/jh1;

    goto :goto_1fd

    .line 784
    :cond_1f5
    sget-object v3, Lads_mobile_sdk/jh1;->d:Lads_mobile_sdk/jh1;

    goto :goto_1fd

    .line 785
    :cond_1f8
    sget-object v3, Lads_mobile_sdk/jh1;->c:Lads_mobile_sdk/jh1;

    goto :goto_1fd

    .line 790
    :cond_1fb
    sget-object v3, Lads_mobile_sdk/jh1;->h:Lads_mobile_sdk/jh1;

    .line 791
    :goto_1fd
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    invoke-virtual {v11, v3}, Lads_mobile_sdk/ih1;->a(Lads_mobile_sdk/jh1;)V

    .line 956
    iget-object v3, v2, Lads_mobile_sdk/th1;->h:Lads_mobile_sdk/eh1;

    .line 957
    invoke-virtual {v3}, Lads_mobile_sdk/eh1;->a()Lads_mobile_sdk/f23;

    move-result-object v3

    if-nez v9, :cond_279

    if-eqz v3, :cond_279

    .line 958
    iget-object v9, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v9, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_217

    move-object/from16 v9, v18

    .line 960
    :cond_217
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v11, v9}, Lads_mobile_sdk/ih1;->a(Ljava/lang/String;)V

    .line 1006
    iget-object v9, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    move-object/from16 p1, v8

    invoke-virtual {v9, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1007
    invoke-virtual {v11, v8, v9}, Lads_mobile_sdk/ih1;->c(J)V

    .line 1008
    iget-object v5, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1009
    invoke-virtual {v11, v4, v5}, Lads_mobile_sdk/ih1;->a(J)V

    .line 1010
    iget-object v4, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1011
    invoke-virtual {v11, v4}, Lads_mobile_sdk/ih1;->a(Z)V

    .line 1012
    iget-object v4, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1013
    invoke-virtual {v11, v4, v5}, Lads_mobile_sdk/ih1;->d(J)V

    .line 1014
    iget-object v4, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1015
    invoke-virtual {v11, v4, v5}, Lads_mobile_sdk/ih1;->b(J)V

    .line 1016
    iget-object v3, v3, Lads_mobile_sdk/f23;->a:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_256

    move-object/from16 v3, v18

    .line 1018
    :cond_256
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v11, v3}, Lads_mobile_sdk/ih1;->b(Ljava/lang/String;)V

    .line 1166
    iget-object v1, v2, Lads_mobile_sdk/th1;->f:Lads_mobile_sdk/zd3;

    .line 1167
    sget-object v2, Lads_mobile_sdk/nh1;->a:Lads_mobile_sdk/nh1;

    iput-object v7, v10, Lads_mobile_sdk/ph1;->a:Lads_mobile_sdk/rr3;

    iput-object v7, v10, Lads_mobile_sdk/ph1;->b:Lads_mobile_sdk/rr3;

    iput-object v0, v10, Lads_mobile_sdk/ph1;->c:Lads_mobile_sdk/lh1;

    move-object/from16 v3, p1

    iput-object v3, v10, Lads_mobile_sdk/ph1;->d:Lads_mobile_sdk/uj2;

    const/4 v4, 0x2

    iput v4, v10, Lads_mobile_sdk/ph1;->e:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1168
    invoke-static {v1, v2, v10}, Lads_mobile_sdk/zd3;->a(Lads_mobile_sdk/zd3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_274
    .catchall {:try_start_1be .. :try_end_274} :catchall_1e9

    move-object/from16 v11, v17

    if-ne v1, v11, :cond_27a

    :goto_278
    return-object v11

    :cond_279
    move-object v3, v8

    :cond_27a
    move-object v2, v0

    move-object v0, v3

    move-object v4, v7

    move-object v5, v4

    .line 1169
    :goto_27e
    :try_start_27e
    iget-object v1, v2, Lads_mobile_sdk/lh1;->a:Lads_mobile_sdk/ih1;

    .line 1170
    invoke-virtual {v1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v1

    move-object/from16 v7, v16

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/kh1;

    .line 1171
    iput-object v1, v0, Lads_mobile_sdk/uj2;->J:Lads_mobile_sdk/kh1;

    .line 1187
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28f
    .catchall {:try_start_27e .. :try_end_28f} :catchall_2a6

    const/4 v0, 0x0

    .line 1256
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1257
    :goto_293
    iget-object v1, v10, Lads_mobile_sdk/ph1;->f:Lads_mobile_sdk/th1;

    .line 1258
    iget-object v2, v1, Lads_mobile_sdk/th1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 1259
    new-instance v5, Lads_mobile_sdk/oh1;

    invoke-direct {v5, v1, v0}, Lads_mobile_sdk/oh1;-><init>(Lads_mobile_sdk/th1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1260
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_2a6
    move-exception v0

    :goto_2a7
    move-object v7, v5

    goto :goto_2aa

    :goto_2a9
    move-object v4, v7

    .line 1329
    :goto_2aa
    :try_start_2aa
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1333
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_2e3

    .line 1335
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2c0

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2c0

    .line 1341
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2c0

    :catchall_2bd
    move-exception v0

    move-object v1, v0

    goto :goto_2e4

    .line 1347
    :cond_2c0
    :goto_2c0
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_2db

    .line 1348
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_2d3

    .line 1349
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_2cd

    throw v0

    .line 1350
    :cond_2cd
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1351
    :cond_2d3
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1352
    :cond_2db
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1353
    :cond_2e3
    throw v0
    :try_end_2e4
    .catchall {:try_start_2aa .. :try_end_2e4} :catchall_2bd

    .line 1354
    :goto_2e4
    :try_start_2e4
    throw v1
    :try_end_2e5
    .catchall {:try_start_2e4 .. :try_end_2e5} :catchall_2e5

    :catchall_2e5
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
