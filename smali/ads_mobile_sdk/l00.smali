###### Class ads_mobile_sdk.l00 (ads_mobile_sdk.l00)
.class public final Lads_mobile_sdk/l00;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Closeable;

.field public c:Ljava/io/Closeable;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/o00;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lads_mobile_sdk/l00;

    iget-object v0, p0, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/l00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/l00;

    iget-object v0, p0, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/l00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/l00;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget v2, v1, Lads_mobile_sdk/l00;->d:I

    const-string v3, "Failed to fetch CLD during initialization."

    const-string v4, "getAppSettingsJson(...)"

    const-string v6, "block"

    const-string v7, "context"

    const-string v8, "<this>"

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_308

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    iget-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iget-object v0, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_25
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2d

    move-object v10, v4

    move-object/from16 v4, p1

    goto/16 :goto_2ab

    :catchall_2d
    move-exception v0

    goto/16 :goto_2c3

    .line 103
    :pswitch_30
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v10, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/o00;

    :try_start_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    move-object/from16 v5, p1

    goto/16 :goto_220

    :catchall_41
    move-exception v0

    goto/16 :goto_2c7

    .line 104
    :pswitch_44
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v10, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/o00;

    :try_start_4e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_41

    goto/16 :goto_20a

    .line 105
    :pswitch_53
    iget-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iget-object v0, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_5a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_62

    move-object v10, v4

    move-object/from16 v4, p1

    goto/16 :goto_182

    :catchall_62
    move-exception v0

    goto/16 :goto_199

    .line 106
    :pswitch_65
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v10, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/o00;

    :try_start_6f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_76

    move-object/from16 v5, p1

    goto/16 :goto_f6

    :catchall_76
    move-exception v0

    goto/16 :goto_19d

    .line 107
    :pswitch_79
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v10, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v10, Lads_mobile_sdk/rr3;

    iget-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/o00;

    :try_start_83
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_76

    goto :goto_e0

    .line 108
    :pswitch_87
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    iget-object v2, v1, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    .line 110
    iget-object v2, v2, Lads_mobile_sdk/o00;->n:Lads_mobile_sdk/g83;

    .line 111
    sget-object v10, Lads_mobile_sdk/s11;->g:Lads_mobile_sdk/s11;

    .line 112
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 113
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 114
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 115
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 116
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 117
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 118
    invoke-direct {v12, v13, v14, v15, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 119
    iget-object v5, v1, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    .line 120
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v13

    .line 121
    iget-object v13, v13, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v14, 0x1

    if-nez v13, :cond_1dd

    .line 122
    invoke-static {v2, v10, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 123
    :try_start_bc
    iget-object v10, v5, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 124
    iput-object v5, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iput v14, v1, Lads_mobile_sdk/l00;->d:I

    .line 125
    iget-object v11, v10, Lads_mobile_sdk/pn;->a:Lkotlin/coroutines/CoroutineContext;

    .line 126
    new-instance v12, Lads_mobile_sdk/hn;

    invoke-direct {v12, v10, v9}, Lads_mobile_sdk/hn;-><init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v12, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_d8

    goto :goto_da

    :cond_d8
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_da
    .catchall {:try_start_bc .. :try_end_da} :catchall_19b

    :goto_da
    if-ne v10, v0, :cond_de

    goto/16 :goto_2aa

    :cond_de
    move-object v10, v2

    move-object v11, v5

    .line 127
    :goto_e0
    :try_start_e0
    iget-object v5, v11, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 128
    iput-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v12, 0x2

    iput v12, v1, Lads_mobile_sdk/l00;->d:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {v5, v1}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_f6

    goto/16 :goto_2aa

    .line 130
    :cond_f6
    :goto_f6
    check-cast v5, Lads_mobile_sdk/jm;

    invoke-virtual {v5}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14a

    .line 131
    iget-object v0, v11, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 132
    new-instance v3, Lads_mobile_sdk/i00;

    invoke-direct {v3, v11, v9}, Lads_mobile_sdk/i00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 133
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 134
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v3, v9}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v4

    move-object/from16 v18, v13

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 393
    iget-object v12, v11, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 394
    new-instance v0, Lads_mobile_sdk/j00;

    invoke-direct {v0, v11, v9}, Lads_mobile_sdk/j00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 395
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v0, v9}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_148
    :goto_148
    move-object v4, v10

    goto :goto_192

    .line 654
    :cond_14a
    iget-object v4, v11, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 655
    new-instance v5, Lads_mobile_sdk/k00;

    invoke-direct {v5, v11, v9}, Lads_mobile_sdk/k00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 656
    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 657
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    new-instance v6, Lads_mobile_sdk/vs3;

    invoke-direct {v6, v5, v9}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move-object/from16 v18, v11

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 906
    iput-object v10, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v9, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v5, 0x3

    iput v5, v1, Lads_mobile_sdk/l00;->d:I

    invoke-interface {v4, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_17e
    .catchall {:try_start_e0 .. :try_end_17e} :catchall_76

    if-ne v4, v0, :cond_182

    goto/16 :goto_2aa

    .line 907
    :cond_182
    :goto_182
    :try_start_182
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_148

    const/4 v0, 0x6

    .line 909
    invoke-static {v3, v9, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_18e
    .catchall {:try_start_182 .. :try_end_18e} :catchall_18f

    goto :goto_148

    :catchall_18f
    move-exception v0

    move-object v4, v10

    goto :goto_199

    .line 912
    :goto_192
    :try_start_192
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_194
    .catchall {:try_start_192 .. :try_end_194} :catchall_62

    .line 1561
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_2c0

    :goto_199
    move-object v10, v4

    goto :goto_19d

    :catchall_19b
    move-exception v0

    move-object v10, v2

    .line 1569
    :goto_19d
    :try_start_19d
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1573
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_1d6

    .line 1575
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1b3

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1b3

    .line 1581
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1b3

    :catchall_1b0
    move-exception v0

    move-object v3, v0

    goto :goto_1d7

    .line 1587
    :cond_1b3
    :goto_1b3
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1ce

    .line 1588
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1c6

    .line 1589
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_1c0

    throw v0

    .line 1590
    :cond_1c0
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1591
    :cond_1c6
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1592
    :cond_1ce
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1593
    :cond_1d6
    throw v0
    :try_end_1d7
    .catchall {:try_start_19d .. :try_end_1d7} :catchall_1b0

    .line 1594
    :goto_1d7
    :try_start_1d7
    throw v3
    :try_end_1d8
    .catchall {:try_start_1d7 .. :try_end_1d8} :catchall_1d8

    :catchall_1d8
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1628
    :cond_1dd
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v10, v2, v14}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 1629
    :try_start_1e5
    iget-object v10, v5, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 1630
    iput-object v5, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v11, 0x4

    iput v11, v1, Lads_mobile_sdk/l00;->d:I

    .line 1631
    iget-object v11, v10, Lads_mobile_sdk/pn;->a:Lkotlin/coroutines/CoroutineContext;

    .line 1632
    new-instance v12, Lads_mobile_sdk/hn;

    invoke-direct {v12, v10, v9}, Lads_mobile_sdk/hn;-><init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v12, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_202

    goto :goto_204

    :cond_202
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_204
    .catchall {:try_start_1e5 .. :try_end_204} :catchall_2c5

    :goto_204
    if-ne v10, v0, :cond_208

    goto/16 :goto_2aa

    :cond_208
    move-object v10, v2

    move-object v11, v5

    .line 1633
    :goto_20a
    :try_start_20a
    iget-object v5, v11, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 1634
    iput-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v10, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v12, 0x5

    iput v12, v1, Lads_mobile_sdk/l00;->d:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1635
    invoke-static {v5, v1}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_220

    goto/16 :goto_2aa

    .line 1636
    :cond_220
    :goto_220
    check-cast v5, Lads_mobile_sdk/jm;

    invoke-virtual {v5}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_274

    .line 1637
    iget-object v0, v11, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 1638
    new-instance v3, Lads_mobile_sdk/i00;

    invoke-direct {v3, v11, v9}, Lads_mobile_sdk/i00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 1639
    sget-object v13, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1640
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1898
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v3, v9}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v4

    move-object/from16 v18, v13

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1899
    iget-object v12, v11, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 1900
    new-instance v0, Lads_mobile_sdk/j00;

    invoke-direct {v0, v11, v9}, Lads_mobile_sdk/j00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 1901
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2159
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v0, v9}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_272
    :goto_272
    move-object v4, v10

    goto :goto_2bb

    .line 2160
    :cond_274
    iget-object v4, v11, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 2161
    new-instance v5, Lads_mobile_sdk/k00;

    invoke-direct {v5, v11, v9}, Lads_mobile_sdk/k00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 2162
    sget-object v11, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2163
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2411
    new-instance v6, Lads_mobile_sdk/vs3;

    invoke-direct {v6, v5, v9}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v4

    move-object/from16 v20, v6

    move-object/from16 v18, v11

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 2412
    iput-object v10, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v9, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v5, 0x6

    iput v5, v1, Lads_mobile_sdk/l00;->d:I

    invoke-interface {v4, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2a8
    .catchall {:try_start_20a .. :try_end_2a8} :catchall_41

    if-ne v4, v0, :cond_2ab

    :goto_2aa
    return-object v0

    .line 2413
    :cond_2ab
    :goto_2ab
    :try_start_2ab
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_272

    const/4 v0, 0x6

    .line 2415
    invoke-static {v3, v9, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_2b7
    .catchall {:try_start_2ab .. :try_end_2b7} :catchall_2b8

    goto :goto_272

    :catchall_2b8
    move-exception v0

    move-object v4, v10

    goto :goto_2c3

    .line 2418
    :goto_2bb
    :try_start_2bb
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2bd
    .catchall {:try_start_2bb .. :try_end_2bd} :catchall_2d

    .line 3104
    invoke-static {v2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 3105
    :goto_2c0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_2c3
    move-object v10, v4

    goto :goto_2c7

    :catchall_2c5
    move-exception v0

    move-object v10, v2

    .line 3792
    :goto_2c7
    :try_start_2c7
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3796
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_300

    .line 3798
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_2dd

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2dd

    .line 3804
    invoke-virtual {v10, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2dd

    :catchall_2da
    move-exception v0

    move-object v3, v0

    goto :goto_301

    .line 3810
    :cond_2dd
    :goto_2dd
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_2f8

    .line 3811
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2f0

    .line 3812
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_2ea

    throw v0

    .line 3813
    :cond_2ea
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3814
    :cond_2f0
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 3815
    :cond_2f8
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 3816
    :cond_300
    throw v0
    :try_end_301
    .catchall {:try_start_2c7 .. :try_end_301} :catchall_2da

    .line 3817
    :goto_301
    :try_start_301
    throw v3
    :try_end_302
    .catchall {:try_start_301 .. :try_end_302} :catchall_302

    :catchall_302
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_87
        :pswitch_79
        :pswitch_65
        :pswitch_53
        :pswitch_44
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
