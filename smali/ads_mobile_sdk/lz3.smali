###### Class ads_mobile_sdk.lz3 (ads_mobile_sdk.lz3)
.class public final Lads_mobile_sdk/lz3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/r31;

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/oz3;

.field public final synthetic d:Z

.field public final synthetic e:Lads_mobile_sdk/nr1;

.field public final synthetic f:Lads_mobile_sdk/ks3;

.field public final synthetic g:Lads_mobile_sdk/eo2;

.field public final synthetic h:Lads_mobile_sdk/t91;

.field public final synthetic i:Z

.field public final synthetic j:Lads_mobile_sdk/mb0;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Lads_mobile_sdk/v14;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/oz3;ZLads_mobile_sdk/nr1;Lads_mobile_sdk/ks3;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;ZLads_mobile_sdk/mb0;Ljava/lang/String;Lads_mobile_sdk/v14;Lkotlin/coroutines/Continuation;)V
    .registers 12

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    iput-boolean p2, p0, Lads_mobile_sdk/lz3;->d:Z

    iput-object p3, p0, Lads_mobile_sdk/lz3;->e:Lads_mobile_sdk/nr1;

    iput-object p4, p0, Lads_mobile_sdk/lz3;->f:Lads_mobile_sdk/ks3;

    iput-object p5, p0, Lads_mobile_sdk/lz3;->g:Lads_mobile_sdk/eo2;

    iput-object p6, p0, Lads_mobile_sdk/lz3;->h:Lads_mobile_sdk/t91;

    iput-boolean p7, p0, Lads_mobile_sdk/lz3;->i:Z

    iput-object p8, p0, Lads_mobile_sdk/lz3;->j:Lads_mobile_sdk/mb0;

    iput-object p9, p0, Lads_mobile_sdk/lz3;->k:Ljava/lang/String;

    iput-object p10, p0, Lads_mobile_sdk/lz3;->l:Lads_mobile_sdk/v14;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 15

    .line 1
    new-instance v0, Lads_mobile_sdk/lz3;

    iget-object v1, p0, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    iget-boolean v2, p0, Lads_mobile_sdk/lz3;->d:Z

    iget-object v3, p0, Lads_mobile_sdk/lz3;->e:Lads_mobile_sdk/nr1;

    iget-object v4, p0, Lads_mobile_sdk/lz3;->f:Lads_mobile_sdk/ks3;

    iget-object v5, p0, Lads_mobile_sdk/lz3;->g:Lads_mobile_sdk/eo2;

    iget-object v6, p0, Lads_mobile_sdk/lz3;->h:Lads_mobile_sdk/t91;

    iget-boolean v7, p0, Lads_mobile_sdk/lz3;->i:Z

    iget-object v8, p0, Lads_mobile_sdk/lz3;->j:Lads_mobile_sdk/mb0;

    iget-object v9, p0, Lads_mobile_sdk/lz3;->k:Ljava/lang/String;

    iget-object v10, p0, Lads_mobile_sdk/lz3;->l:Lads_mobile_sdk/v14;

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/lz3;-><init>(Lads_mobile_sdk/oz3;ZLads_mobile_sdk/nr1;Lads_mobile_sdk/ks3;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;ZLads_mobile_sdk/mb0;Ljava/lang/String;Lads_mobile_sdk/v14;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/lz3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lz3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/lz3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 121
    iget v2, v1, Lads_mobile_sdk/lz3;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "key"

    if-eqz v2, :cond_20

    if-ne v2, v5, :cond_18

    iget-object v0, v1, Lads_mobile_sdk/lz3;->a:Lads_mobile_sdk/r31;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v0

    goto/16 :goto_124

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    iget-object v2, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 123
    iget-object v2, v2, Lads_mobile_sdk/oz3;->p:Lads_mobile_sdk/qn;

    .line 124
    iget-boolean v7, v1, Lads_mobile_sdk/lz3;->d:Z

    .line 125
    iget-object v2, v2, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 126
    check-cast v2, Lads_mobile_sdk/rs1;

    .line 127
    iget-object v8, v2, Lads_mobile_sdk/rs1;->a:Lads_mobile_sdk/ex0;

    .line 128
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    const-string v9, "gads:webview_capping:enabled"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v8, v9, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_b2

    if-eqz v7, :cond_4a

    goto :goto_b2

    .line 147
    :cond_4a
    iget-object v7, v2, Lads_mobile_sdk/rs1;->a:Lads_mobile_sdk/ex0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v7, v9, v10, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x5

    const-string v9, "gads:max_live_webviews"

    if-nez v7, :cond_62

    goto :goto_7f

    .line 166
    :cond_62
    iget-object v7, v2, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    .line 167
    iget-object v10, v2, Lads_mobile_sdk/rs1;->a:Lads_mobile_sdk/ex0;

    .line 169
    invoke-static {v10, v9, v6, v8}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    .line 170
    sget-object v12, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v10, v9, v11, v12}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lt v7, v10, :cond_7f

    .line 171
    sget-object v2, Lads_mobile_sdk/t01;->c:Lads_mobile_sdk/t01;

    goto :goto_c3

    .line 172
    :cond_7f
    :goto_7f
    iget-object v7, v2, Lads_mobile_sdk/rs1;->a:Lads_mobile_sdk/ex0;

    .line 174
    invoke-static {v7, v9, v6, v8}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    .line 175
    sget-object v10, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v7, v9, v8, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 176
    :cond_91
    iget-object v8, v2, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-lt v8, v7, :cond_9c

    .line 178
    sget-object v2, Lads_mobile_sdk/t01;->c:Lads_mobile_sdk/t01;

    goto :goto_c3

    .line 180
    :cond_9c
    iget-object v9, v2, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v8, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 181
    iput v10, v2, Lads_mobile_sdk/rs1;->c:I

    .line 182
    new-instance v2, Lads_mobile_sdk/q01;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v7}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    goto :goto_c3

    .line 183
    :cond_b2
    :goto_b2
    iget-object v7, v2, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    .line 184
    iput v7, v2, Lads_mobile_sdk/rs1;->c:I

    .line 185
    new-instance v2, Lads_mobile_sdk/q01;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v7}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    .line 186
    :goto_c3
    instance-of v7, v2, Lads_mobile_sdk/i01;

    if-eqz v7, :cond_c8

    return-object v2

    .line 188
    :cond_c8
    sget-object v2, Lads_mobile_sdk/s11;->O:Lads_mobile_sdk/s11;

    iget-object v7, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    iget-object v12, v1, Lads_mobile_sdk/lz3;->j:Lads_mobile_sdk/mb0;

    iget-object v8, v1, Lads_mobile_sdk/lz3;->k:Ljava/lang/String;

    iget-object v9, v1, Lads_mobile_sdk/lz3;->l:Lads_mobile_sdk/v14;

    .line 275
    sget-object v10, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {v2, v10, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    move-object/from16 v17, v9

    .line 276
    :try_start_de
    iget-object v9, v7, Lads_mobile_sdk/oz3;->d:Lkotlin/coroutines/CoroutineContext;

    .line 277
    iget-object v10, v7, Lads_mobile_sdk/oz3;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 278
    iget-object v11, v7, Lads_mobile_sdk/oz3;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 279
    iget-object v13, v7, Lads_mobile_sdk/oz3;->g:Lads_mobile_sdk/ur3;

    .line 280
    iget-object v14, v7, Lads_mobile_sdk/oz3;->f:Lads_mobile_sdk/rb;

    .line 281
    iget-object v15, v7, Lads_mobile_sdk/oz3;->a:Landroid/content/Context;

    .line 282
    iget-object v4, v7, Lads_mobile_sdk/oz3;->j:Lads_mobile_sdk/w61;

    .line 283
    iget-object v5, v7, Lads_mobile_sdk/oz3;->l:Lads_mobile_sdk/ex0;

    .line 284
    iget-object v3, v7, Lads_mobile_sdk/oz3;->m:Lads_mobile_sdk/dz3;

    .line 285
    iget-object v7, v7, Lads_mobile_sdk/oz3;->p:Lads_mobile_sdk/qn;

    move-object/from16 v16, v8

    .line 286
    new-instance v8, Lads_mobile_sdk/r31;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    invoke-direct/range {v8 .. v21}, Lads_mobile_sdk/r31;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/mb0;Lads_mobile_sdk/ur3;Lads_mobile_sdk/rb;Landroid/content/Context;Ljava/lang/String;Lads_mobile_sdk/v14;Lads_mobile_sdk/dz3;Lads_mobile_sdk/w61;Lads_mobile_sdk/ex0;Lads_mobile_sdk/qn;)V
    :try_end_101
    .catchall {:try_start_de .. :try_end_101} :catchall_25f

    const/4 v3, 0x0

    .line 381
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 382
    iget-object v2, v8, Lads_mobile_sdk/r31;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 383
    new-instance v3, Lads_mobile_sdk/jz3;

    iget-object v4, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 384
    iget-object v4, v4, Lads_mobile_sdk/oz3;->p:Lads_mobile_sdk/qn;

    .line 385
    invoke-direct {v3, v4, v2}, Lads_mobile_sdk/jz3;-><init>(Lads_mobile_sdk/qn;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 386
    iget-object v2, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 387
    iget-object v2, v2, Lads_mobile_sdk/oz3;->q:Lads_mobile_sdk/bn2;

    .line 388
    iput-object v8, v1, Lads_mobile_sdk/lz3;->a:Lads_mobile_sdk/r31;

    const/4 v4, 0x1

    iput v4, v1, Lads_mobile_sdk/lz3;->b:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    invoke-static {v2, v8, v3, v1}, Lads_mobile_sdk/bn2;->a(Lads_mobile_sdk/bn2;Ljava/lang/Object;Lads_mobile_sdk/vm2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_123

    return-object v0

    :cond_123
    move-object v10, v8

    .line 390
    :goto_124
    iget-object v0, v1, Lads_mobile_sdk/lz3;->e:Lads_mobile_sdk/nr1;

    if-nez v0, :cond_13a

    .line 391
    new-instance v9, Lads_mobile_sdk/b04;

    .line 393
    iget-object v0, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 394
    iget-object v11, v0, Lads_mobile_sdk/oz3;->e:Lads_mobile_sdk/g83;

    .line 395
    iget-object v12, v1, Lads_mobile_sdk/lz3;->f:Lads_mobile_sdk/ks3;

    .line 396
    iget-object v13, v0, Lads_mobile_sdk/oz3;->h:Lads_mobile_sdk/o21;

    .line 397
    iget-object v14, v0, Lads_mobile_sdk/oz3;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 398
    iget-object v15, v0, Lads_mobile_sdk/oz3;->l:Lads_mobile_sdk/ex0;

    .line 399
    invoke-direct/range {v9 .. v15}, Lads_mobile_sdk/b04;-><init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/o21;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;)V

    move-object v0, v9

    .line 408
    :cond_13a
    sget-object v2, Lads_mobile_sdk/g41;->v:Lads_mobile_sdk/s31;

    .line 411
    iget-object v3, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 412
    iget-object v12, v3, Lads_mobile_sdk/oz3;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 413
    iget-object v13, v3, Lads_mobile_sdk/oz3;->h:Lads_mobile_sdk/o21;

    .line 414
    iget-object v14, v3, Lads_mobile_sdk/oz3;->f:Lads_mobile_sdk/rb;

    .line 415
    iget-object v15, v3, Lads_mobile_sdk/oz3;->l:Lads_mobile_sdk/ex0;

    .line 416
    iget-object v4, v3, Lads_mobile_sdk/oz3;->r:Lads_mobile_sdk/vk0;

    .line 417
    iget-object v3, v3, Lads_mobile_sdk/oz3;->n:Lads_mobile_sdk/e01;

    .line 418
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    const-string v2, "jsContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gmaWebView"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "backgroundScope"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gmaUtil"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adSpamClient"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flags"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "httpClient"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    new-instance v9, Lads_mobile_sdk/g41;

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object v11, v10

    move-object v10, v0

    invoke-direct/range {v9 .. v17}, Lads_mobile_sdk/g41;-><init>(Lads_mobile_sdk/nr1;Lads_mobile_sdk/r31;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/o21;Lads_mobile_sdk/rb;Lads_mobile_sdk/ex0;Lads_mobile_sdk/vk0;Lads_mobile_sdk/e01;)V

    move-object v2, v9

    move-object v10, v11

    .line 853
    iget-object v3, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 854
    iget-object v3, v3, Lads_mobile_sdk/oz3;->k:Lads_mobile_sdk/vk1;

    .line 855
    iget-object v11, v1, Lads_mobile_sdk/lz3;->f:Lads_mobile_sdk/ks3;

    iget-object v12, v1, Lads_mobile_sdk/lz3;->g:Lads_mobile_sdk/eo2;

    iget-object v13, v1, Lads_mobile_sdk/lz3;->h:Lads_mobile_sdk/t91;

    check-cast v3, Lads_mobile_sdk/wk1;

    .line 856
    iget-object v3, v3, Lads_mobile_sdk/wk1;->a:Lads_mobile_sdk/xk1;

    .line 857
    iget-object v4, v3, Lads_mobile_sdk/xk1;->a:Lads_mobile_sdk/dw2;

    .line 858
    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lads_mobile_sdk/g83;

    iget-object v4, v3, Lads_mobile_sdk/xk1;->b:Lads_mobile_sdk/dw2;

    invoke-interface {v4}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lads_mobile_sdk/rb;

    iget-object v3, v3, Lads_mobile_sdk/xk1;->c:Lads_mobile_sdk/dw2;

    invoke-interface {v3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lads_mobile_sdk/ex0;

    .line 859
    new-instance v9, Lads_mobile_sdk/uk1;

    invoke-direct/range {v9 .. v16}, Lads_mobile_sdk/uk1;-><init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/ks3;Lads_mobile_sdk/eo2;Lads_mobile_sdk/t91;Lads_mobile_sdk/g83;Lads_mobile_sdk/rb;Lads_mobile_sdk/ex0;)V

    .line 860
    const-string v3, "googleAdsJsInterface"

    invoke-virtual {v10, v9, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    const-string v3, "client"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v10, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1092
    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    iput-object v2, v10, Lads_mobile_sdk/r31;->z:Lads_mobile_sdk/g41;

    .line 1220
    new-instance v4, Lads_mobile_sdk/u21;

    invoke-direct {v4, v2}, Lads_mobile_sdk/u21;-><init>(Lads_mobile_sdk/g41;)V

    invoke-virtual {v10, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1221
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    iput-object v0, v10, Lads_mobile_sdk/r31;->y:Lads_mobile_sdk/nr1;

    .line 1348
    iget-boolean v0, v1, Lads_mobile_sdk/lz3;->i:Z

    if-nez v0, :cond_259

    iget-object v0, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 1349
    iget-object v0, v0, Lads_mobile_sdk/oz3;->l:Lads_mobile_sdk/ex0;

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1352
    const-string v2, "creative_webview_init_set_profile:enabled"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v3, v4}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_259

    .line 1369
    iget-object v0, v1, Lads_mobile_sdk/lz3;->c:Lads_mobile_sdk/oz3;

    .line 1370
    iget-object v0, v0, Lads_mobile_sdk/oz3;->m:Lads_mobile_sdk/dz3;

    .line 1371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1372
    const-string v2, "webView"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    :try_start_1f9
    invoke-virtual {v0}, Lads_mobile_sdk/ns;->a()Z

    move-result v0

    if-eqz v0, :cond_259

    .line 1409
    sget-object v0, Lads_mobile_sdk/s11;->U:Lads_mobile_sdk/s11;

    .line 1490
    sget-object v2, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2
    :try_end_20c
    .catchall {:try_start_1f9 .. :try_end_20c} :catchall_259

    .line 1491
    :try_start_20c
    const-string v0, "GMA_WEBVIEW_PROFILE"

    invoke-static {v10, v0}, Landroidx/webkit/WebViewCompat;->setProfile(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1492
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_213
    .catchall {:try_start_20c .. :try_end_213} :catchall_218

    const/4 v3, 0x0

    .line 1580
    :try_start_214
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_217
    .catchall {:try_start_214 .. :try_end_217} :catchall_259

    goto :goto_259

    :catchall_218
    move-exception v0

    .line 1588
    :try_start_219
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1592
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_252

    .line 1594
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_22f

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_22f

    .line 1600
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_22f

    :catchall_22c
    move-exception v0

    move-object v3, v0

    goto :goto_253

    .line 1606
    :cond_22f
    :goto_22f
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_24a

    .line 1607
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_242

    .line 1608
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_23c

    throw v0

    .line 1609
    :cond_23c
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1610
    :cond_242
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1611
    :cond_24a
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1612
    :cond_252
    throw v0
    :try_end_253
    .catchall {:try_start_219 .. :try_end_253} :catchall_22c

    .line 1613
    :goto_253
    :try_start_253
    throw v3
    :try_end_254
    .catchall {:try_start_253 .. :try_end_254} :catchall_254

    :catchall_254
    move-exception v0

    :try_start_255
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_259
    .catchall {:try_start_255 .. :try_end_259} :catchall_259

    .line 1614
    :catchall_259
    :cond_259
    :goto_259
    new-instance v0, Lads_mobile_sdk/q01;

    invoke-direct {v0, v10}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0

    :catchall_25f
    move-exception v0

    .line 1658
    :try_start_260
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1662
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_299

    .line 1664
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_276

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_276

    .line 1670
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_276

    :catchall_273
    move-exception v0

    move-object v3, v0

    goto :goto_29a

    .line 1676
    :cond_276
    :goto_276
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_291

    .line 1677
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_289

    .line 1678
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_283

    throw v0

    .line 1679
    :cond_283
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1680
    :cond_289
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1681
    :cond_291
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1682
    :cond_299
    throw v0
    :try_end_29a
    .catchall {:try_start_260 .. :try_end_29a} :catchall_273

    .line 1683
    :goto_29a
    :try_start_29a
    throw v3
    :try_end_29b
    .catchall {:try_start_29a .. :try_end_29b} :catchall_29b

    :catchall_29b
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
