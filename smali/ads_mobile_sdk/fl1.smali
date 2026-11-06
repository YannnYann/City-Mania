###### Class ads_mobile_sdk.fl1 (ads_mobile_sdk.fl1)
.class public final Lads_mobile_sdk/fl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/eq1;


# instance fields
.field public a:Lads_mobile_sdk/r31;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lkotlinx/coroutines/CoroutineScope;

.field public final d:Lads_mobile_sdk/g83;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Z

.field public final g:Lkotlinx/coroutines/sync/Mutex;

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r31;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/ex0;Z)V
    .registers 8

    .line 1
    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    .line 30
    iput-object p2, p0, Lads_mobile_sdk/fl1;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    iput-object p3, p0, Lads_mobile_sdk/fl1;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    iput-object p4, p0, Lads_mobile_sdk/fl1;->d:Lads_mobile_sdk/g83;

    .line 33
    iput-object p5, p0, Lads_mobile_sdk/fl1;->e:Lads_mobile_sdk/ex0;

    .line 34
    iput-boolean p6, p0, Lads_mobile_sdk/fl1;->f:Z

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 37
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/fl1;->g:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/fl1;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4
    instance-of v5, v4, Lads_mobile_sdk/yk1;

    if-eqz v5, :cond_1d

    move-object v5, v4

    check-cast v5, Lads_mobile_sdk/yk1;

    iget v6, v5, Lads_mobile_sdk/yk1;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/yk1;->e:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lads_mobile_sdk/yk1;

    invoke-direct {v5, v0, v4}, Lads_mobile_sdk/yk1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    :goto_22
    iget-object v4, v5, Lads_mobile_sdk/yk1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 84
    iget v7, v5, Lads_mobile_sdk/yk1;->e:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_52

    if-eq v7, v10, :cond_46

    if-ne v7, v9, :cond_3e

    iget-object v1, v5, Lads_mobile_sdk/yk1;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v5, Lads_mobile_sdk/yk1;->a:Lads_mobile_sdk/rr3;

    :try_start_36
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    goto/16 :goto_160

    :catchall_3b
    move-exception v0

    goto/16 :goto_17b

    .line 85
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v1, v5, Lads_mobile_sdk/yk1;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v5, Lads_mobile_sdk/yk1;->a:Lads_mobile_sdk/rr3;

    :try_start_4a
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4f

    goto/16 :goto_c2

    :catchall_4f
    move-exception v0

    goto/16 :goto_dd

    .line 86
    :cond_52
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    iget-object v4, v0, Lads_mobile_sdk/fl1;->d:Lads_mobile_sdk/g83;

    sget-object v7, Lads_mobile_sdk/s11;->h1:Lads_mobile_sdk/s11;

    .line 159
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 160
    new-instance v13, Lads_mobile_sdk/ks3;

    .line 161
    new-instance v14, Lads_mobile_sdk/n03;

    invoke-direct {v14}, Lads_mobile_sdk/n03;-><init>()V

    .line 162
    new-instance v15, Lads_mobile_sdk/tn1;

    invoke-direct {v15}, Lads_mobile_sdk/tn1;-><init>()V

    .line 163
    new-instance v9, Lads_mobile_sdk/m33;

    invoke-direct {v9}, Lads_mobile_sdk/m33;-><init>()V

    .line 164
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 165
    invoke-direct {v13, v14, v15, v9, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 166
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 167
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v11, "build(...)"

    const-string v14, "value"

    const-string v15, "builder"

    const-string v8, "newBuilder(...)"

    if-nez v9, :cond_120

    .line 168
    invoke-static {v4, v7, v12, v13}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 169
    :try_start_8a
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    .line 246
    invoke-static {}, Lads_mobile_sdk/cs1;->v()Lads_mobile_sdk/bs1;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v9, v1}, Lads_mobile_sdk/bs1;->a(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v9}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lads_mobile_sdk/cs1;

    .line 295
    iput-object v8, v7, Lads_mobile_sdk/uj2;->y:Lads_mobile_sdk/cs1;

    .line 296
    iget-object v0, v0, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz v0, :cond_c9

    iput-object v4, v5, Lads_mobile_sdk/yk1;->a:Lads_mobile_sdk/rr3;

    iput-object v4, v5, Lads_mobile_sdk/yk1;->b:Lads_mobile_sdk/rr3;

    iput v10, v5, Lads_mobile_sdk/yk1;->e:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lads_mobile_sdk/r31;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_bb
    .catchall {:try_start_8a .. :try_end_bb} :catchall_c7

    if-ne v0, v6, :cond_bf

    goto/16 :goto_15c

    :cond_bf
    move-object v1, v4

    move-object v2, v1

    move-object v4, v0

    .line 297
    :goto_c2
    :try_start_c2
    check-cast v4, Lads_mobile_sdk/v01;

    if-nez v4, :cond_cd

    goto :goto_cb

    :catchall_c7
    move-exception v0

    goto :goto_df

    :cond_c9
    move-object v1, v4

    move-object v2, v1

    .line 298
    :goto_cb
    sget-object v4, Lads_mobile_sdk/u01;->c:Lads_mobile_sdk/u01;

    .line 376
    :cond_cd
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_d8

    .line 377
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 378
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d8
    .catchall {:try_start_c2 .. :try_end_d8} :catchall_4f

    :cond_d8
    const/4 v0, 0x0

    .line 379
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_dd
    move-object v4, v2

    goto :goto_e0

    :goto_df
    move-object v1, v4

    .line 389
    :goto_e0
    :try_start_e0
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 393
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_119

    .line 395
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_f6

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_f6

    .line 401
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_f6

    :catchall_f3
    move-exception v0

    move-object v2, v0

    goto :goto_11a

    .line 407
    :cond_f6
    :goto_f6
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_111

    .line 408
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_109

    .line 409
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_103

    throw v0

    .line 410
    :cond_103
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 411
    :cond_109
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 412
    :cond_111
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 413
    :cond_119
    throw v0
    :try_end_11a
    .catchall {:try_start_e0 .. :try_end_11a} :catchall_f3

    .line 414
    :goto_11a
    :try_start_11a
    throw v2
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_11b

    :catchall_11b
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 450
    :cond_120
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 451
    :try_start_128
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    .line 528
    invoke-static {}, Lads_mobile_sdk/cs1;->v()Lads_mobile_sdk/bs1;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v9, v1}, Lads_mobile_sdk/bs1;->a(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v9}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lads_mobile_sdk/cs1;

    .line 577
    iput-object v8, v7, Lads_mobile_sdk/uj2;->y:Lads_mobile_sdk/cs1;

    .line 578
    iget-object v0, v0, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz v0, :cond_167

    iput-object v4, v5, Lads_mobile_sdk/yk1;->a:Lads_mobile_sdk/rr3;

    iput-object v4, v5, Lads_mobile_sdk/yk1;->b:Lads_mobile_sdk/rr3;

    const/4 v7, 0x2

    iput v7, v5, Lads_mobile_sdk/yk1;->e:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lads_mobile_sdk/r31;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15a
    .catchall {:try_start_128 .. :try_end_15a} :catchall_165

    if-ne v0, v6, :cond_15d

    :goto_15c
    return-object v6

    :cond_15d
    move-object v1, v4

    move-object v2, v1

    move-object v4, v0

    .line 579
    :goto_160
    :try_start_160
    check-cast v4, Lads_mobile_sdk/v01;

    if-nez v4, :cond_16b

    goto :goto_169

    :catchall_165
    move-exception v0

    goto :goto_17d

    :cond_167
    move-object v1, v4

    move-object v2, v1

    .line 580
    :goto_169
    sget-object v4, Lads_mobile_sdk/u01;->c:Lads_mobile_sdk/u01;

    .line 695
    :cond_16b
    instance-of v0, v4, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_176

    .line 696
    move-object v0, v4

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 697
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_176
    .catchall {:try_start_160 .. :try_end_176} :catchall_3b

    :cond_176
    const/4 v0, 0x0

    .line 698
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :goto_17b
    move-object v4, v2

    goto :goto_17e

    :goto_17d
    move-object v1, v4

    .line 706
    :goto_17e
    :try_start_17e
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 710
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1b7

    .line 712
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_194

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_194

    .line 718
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_194

    :catchall_191
    move-exception v0

    move-object v2, v0

    goto :goto_1b8

    .line 724
    :cond_194
    :goto_194
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1af

    .line 725
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1a7

    .line 726
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1a1

    throw v0

    .line 727
    :cond_1a1
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 728
    :cond_1a7
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 729
    :cond_1af
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 730
    :cond_1b7
    throw v0
    :try_end_1b8
    .catchall {:try_start_17e .. :try_end_1b8} :catchall_191

    .line 731
    :goto_1b8
    :try_start_1b8
    throw v2
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b9

    :catchall_1b9
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 733
    iget-object v0, p0, Lads_mobile_sdk/fl1;->a:Lads_mobile_sdk/r31;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1, p2, p3}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_f

    return-object p1

    :cond_f
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 734
    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2, v0, p3}, Lads_mobile_sdk/fl1;->a(Lads_mobile_sdk/fl1;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/zk1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/zk1;

    iget v1, v0, Lads_mobile_sdk/zk1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/zk1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/zk1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/zk1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/zk1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lads_mobile_sdk/zk1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_67

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lads_mobile_sdk/zk1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lads_mobile_sdk/zk1;->a:Lads_mobile_sdk/fl1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    iget-object v2, p0, Lads_mobile_sdk/fl1;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 122
    iput-object p0, v0, Lads_mobile_sdk/zk1;->a:Lads_mobile_sdk/fl1;

    iput-object v2, v0, Lads_mobile_sdk/zk1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/zk1;->e:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4f

    goto :goto_66

    :cond_4f
    move-object v6, p0

    .line 123
    :goto_50
    :try_start_50
    iget p1, v6, Lads_mobile_sdk/fl1;->i:I

    sub-int/2addr p1, v4

    iput p1, v6, Lads_mobile_sdk/fl1;->i:I

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_6a

    .line 196
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 197
    iput-object v5, v0, Lads_mobile_sdk/zk1;->a:Lads_mobile_sdk/fl1;

    iput-object v5, v0, Lads_mobile_sdk/zk1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/zk1;->e:I

    invoke-virtual {v6, v0}, Lads_mobile_sdk/fl1;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_67

    :goto_66
    return-object v1

    .line 198
    :cond_67
    :goto_67
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_6a
    move-exception p1

    .line 269
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/al1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/al1;

    iget v1, v0, Lads_mobile_sdk/al1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/al1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/al1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/al1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/al1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget v2, v0, Lads_mobile_sdk/al1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3d

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lads_mobile_sdk/al1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lads_mobile_sdk/al1;->a:Lads_mobile_sdk/fl1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    iget-object v2, p0, Lads_mobile_sdk/fl1;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 133
    iput-object p0, v0, Lads_mobile_sdk/al1;->a:Lads_mobile_sdk/fl1;

    iput-object v2, v0, Lads_mobile_sdk/al1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/al1;->e:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4f

    goto :goto_63

    :cond_4f
    move-object v6, p0

    .line 134
    :goto_50
    :try_start_50
    iput-boolean v4, v6, Lads_mobile_sdk/fl1;->h:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_67

    .line 213
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 214
    iput-object v5, v0, Lads_mobile_sdk/al1;->a:Lads_mobile_sdk/fl1;

    iput-object v5, v0, Lads_mobile_sdk/al1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/al1;->e:I

    invoke-virtual {v6, v0}, Lads_mobile_sdk/fl1;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_64

    :goto_63
    return-object v1

    .line 215
    :cond_64
    :goto_64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_67
    move-exception p1

    .line 292
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/bl1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/bl1;

    iget v1, v0, Lads_mobile_sdk/bl1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bl1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/bl1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/bl1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/bl1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lads_mobile_sdk/bl1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/bl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/bl1;->a:Lads_mobile_sdk/fl1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/fl1;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 111
    iput-object p0, v0, Lads_mobile_sdk/bl1;->a:Lads_mobile_sdk/fl1;

    iput-object p1, v0, Lads_mobile_sdk/bl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/bl1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 112
    :goto_4a
    :try_start_4a
    iget p1, v0, Lads_mobile_sdk/fl1;->i:I

    add-int/2addr p1, v3

    iput p1, v0, Lads_mobile_sdk/fl1;->i:I

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    .line 177
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_55
    move-exception p1

    .line 178
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/cl1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/cl1;

    iget v1, v0, Lads_mobile_sdk/cl1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/cl1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/cl1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/cl1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/cl1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 62
    iget v2, v0, Lads_mobile_sdk/cl1;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_36

    if-ne v2, v3, :cond_2e

    iget-object v1, v0, Lads_mobile_sdk/cl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/cl1;->a:Lads_mobile_sdk/fl1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lads_mobile_sdk/fl1;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 144
    iput-object p0, v0, Lads_mobile_sdk/cl1;->a:Lads_mobile_sdk/fl1;

    iput-object p1, v0, Lads_mobile_sdk/cl1;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/cl1;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_48

    return-object v1

    :cond_48
    move-object v0, p0

    move-object v1, p1

    .line 145
    :goto_4a
    :try_start_4a
    iget-boolean p1, v0, Lads_mobile_sdk/fl1;->h:Z

    if-eqz p1, :cond_64

    iget p1, v0, Lads_mobile_sdk/fl1;->i:I

    if-gtz p1, :cond_64

    .line 146
    iget-object v5, v0, Lads_mobile_sdk/fl1;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lads_mobile_sdk/dl1;

    invoke-direct {v8, v0, v4}, Lads_mobile_sdk/dl1;-><init>(Lads_mobile_sdk/fl1;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_64

    :catchall_61
    move-exception v0

    move-object p1, v0

    goto :goto_6a

    .line 154
    :cond_64
    :goto_64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_66
    .catchall {:try_start_4a .. :try_end_66} :catchall_61

    .line 229
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 230
    :goto_6a
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
