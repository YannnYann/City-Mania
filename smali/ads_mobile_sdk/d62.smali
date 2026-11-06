###### Class ads_mobile_sdk.d62 (ads_mobile_sdk.d62)
.class public final Lads_mobile_sdk/d62;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Closeable;

.field public c:Ljava/io/Closeable;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Lads_mobile_sdk/rr3;

.field public g:I

.field public final synthetic h:Lcom/google/gson/JsonObject;

.field public final synthetic i:Lads_mobile_sdk/j62;

.field public final synthetic j:Lads_mobile_sdk/eo2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/d62;->h:Lcom/google/gson/JsonObject;

    iput-object p2, p0, Lads_mobile_sdk/d62;->i:Lads_mobile_sdk/j62;

    iput-object p1, p0, Lads_mobile_sdk/d62;->j:Lads_mobile_sdk/eo2;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/d62;

    iget-object v1, p0, Lads_mobile_sdk/d62;->h:Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lads_mobile_sdk/d62;->i:Lads_mobile_sdk/j62;

    iget-object v3, p0, Lads_mobile_sdk/d62;->j:Lads_mobile_sdk/eo2;

    invoke-direct {v0, v3, v2, v1, p1}, Lads_mobile_sdk/d62;-><init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/d62;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/d62;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/d62;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v4, p0

    .line 1
    const-string v0, "getDisplayMetrics(...)"

    const-string v1, ""

    const-string v2, "<this>"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 60
    iget v3, v4, Lads_mobile_sdk/d62;->g:I

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_7b

    if-eq v3, v8, :cond_57

    if-eq v3, v5, :cond_33

    if-ne v3, v7, :cond_2b

    iget-object v1, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    move-object/from16 v0, p1

    goto/16 :goto_1b0

    :catchall_28
    move-exception v0

    goto/16 :goto_20d

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_33
    iget-object v1, v4, Lads_mobile_sdk/d62;->f:Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v3, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iget-object v5, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v8, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/j62;

    :try_start_48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_52

    move-object v7, v6

    move-object v11, v8

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_15f

    :catchall_52
    move-exception v0

    move-object v8, v1

    :goto_54
    move-object v1, v3

    goto/16 :goto_1c0

    .line 62
    :cond_57
    iget-object v0, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iget-object v3, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/j62;

    :try_start_69
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_76

    move-object v10, v3

    move v3, v5

    move-object v7, v6

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_11b

    :catchall_76
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_20d

    .line 63
    :cond_7b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    sget-object v3, Lads_mobile_sdk/s11;->n0:Lads_mobile_sdk/s11;

    iget-object v11, v4, Lads_mobile_sdk/d62;->h:Lcom/google/gson/JsonObject;

    iget-object v12, v4, Lads_mobile_sdk/d62;->i:Lads_mobile_sdk/j62;

    iget-object v13, v4, Lads_mobile_sdk/d62;->j:Lads_mobile_sdk/eo2;

    .line 183
    sget-object v14, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-static {v3, v14, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 184
    :try_start_90
    const-string v14, "base_url"

    .line 185
    invoke-static {v11, v14, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 186
    const-string v15, "html"

    .line 187
    invoke-static {v11, v15, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v15, "width"

    .line 189
    invoke-static {v11, v15, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v15

    .line 190
    const-string v7, "height"

    .line 191
    invoke-static {v11, v7, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v7

    if-lez v15, :cond_f8

    if-lez v7, :cond_f8

    .line 192
    iget-object v11, v12, Lads_mobile_sdk/j62;->a:Landroid/content/Context;

    .line 193
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v15, v15

    .line 194
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-static {v8, v15, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-int v10, v10

    .line 300
    iget-object v11, v12, Lads_mobile_sdk/j62;->a:Landroid/content/Context;

    .line 301
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v7, v7

    .line 302
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-static {v8, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    move-object v7, v6

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v0, v5

    float-to-int v0, v0

    .line 408
    new-instance v5, Lads_mobile_sdk/v14;

    sget-object v6, Lads_mobile_sdk/u14;->b:Lads_mobile_sdk/u14;

    const/16 v11, 0x8

    invoke-direct {v5, v6, v10, v0, v11}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    goto :goto_102

    :catchall_f5
    move-exception v0

    goto/16 :goto_20b

    :cond_f8
    move-object v7, v6

    .line 409
    new-instance v5, Lads_mobile_sdk/v14;

    sget-object v0, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    const/16 v6, 0xe

    invoke-direct {v5, v0, v9, v9, v6}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 410
    :goto_102
    iput-object v12, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iput-object v14, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    iput v8, v4, Lads_mobile_sdk/d62;->g:I

    invoke-static {v12, v5, v13, v4}, Lads_mobile_sdk/j62;->a(Lads_mobile_sdk/j62;Lads_mobile_sdk/v14;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_112
    .catchall {:try_start_90 .. :try_end_112} :catchall_f5

    if-ne v0, v7, :cond_116

    goto/16 :goto_1ad

    :cond_116
    move-object v6, v3

    move-object v10, v6

    move-object v11, v12

    move-object v2, v14

    const/4 v3, 0x2

    .line 411
    :goto_11b
    :try_start_11b
    check-cast v0, Lads_mobile_sdk/v01;

    .line 429
    instance-of v5, v0, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_12e

    .line 430
    check-cast v0, Lads_mobile_sdk/i01;

    .line 431
    invoke-static {v0, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_126
    .catchall {:try_start_11b .. :try_end_126} :catchall_12b

    const/4 v15, 0x0

    .line 432
    invoke-static {v6, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v15

    :catchall_12b
    move-exception v0

    goto/16 :goto_202

    .line 434
    :cond_12e
    :try_start_12e
    instance-of v5, v0, Lads_mobile_sdk/q01;

    if-eqz v5, :cond_205

    check-cast v0, Lads_mobile_sdk/q01;

    .line 435
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 436
    check-cast v0, Lads_mobile_sdk/r31;

    .line 439
    sget-object v5, Lads_mobile_sdk/s11;->R:Lads_mobile_sdk/s11;

    .line 541
    sget-object v12, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {v5, v12, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8
    :try_end_144
    .catchall {:try_start_12e .. :try_end_144} :catchall_12b

    .line 542
    :try_start_144
    iput-object v11, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iput-object v0, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/d62;->f:Lads_mobile_sdk/rr3;

    iput v3, v4, Lads_mobile_sdk/d62;->g:I

    const/4 v3, 0x1

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_159
    .catchall {:try_start_144 .. :try_end_159} :catchall_1bc

    if-ne v1, v7, :cond_15c

    goto :goto_1ad

    :cond_15c
    move-object v3, v6

    move-object v2, v8

    move-object v5, v10

    .line 543
    :goto_15f
    :try_start_15f
    check-cast v1, Lads_mobile_sdk/v01;

    .line 650
    instance-of v6, v1, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_16b

    .line 651
    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/i01;

    .line 652
    invoke-static {v6, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_16b
    .catchall {:try_start_15f .. :try_end_16b} :catchall_16d

    :cond_16b
    const/4 v15, 0x0

    goto :goto_170

    :catchall_16d
    move-exception v0

    goto/16 :goto_54

    .line 653
    :goto_170
    :try_start_170
    invoke-static {v8, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 654
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_197

    .line 655
    iget-object v2, v11, Lads_mobile_sdk/j62;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 656
    sget-object v17, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lads_mobile_sdk/c62;

    invoke-direct {v6, v0, v15}, Lads_mobile_sdk/c62;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move-object/from16 v19, v6

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 657
    check-cast v1, Lads_mobile_sdk/i01;

    .line 658
    invoke-static {v1, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    const/4 v15, 0x0

    :goto_193
    const/4 v0, 0x0

    goto :goto_1b5

    :catchall_195
    move-exception v0

    goto :goto_1b9

    .line 659
    :cond_197
    iput-object v5, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    const/4 v15, 0x0

    iput-object v15, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iput-object v15, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    iput-object v15, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    iput-object v15, v4, Lads_mobile_sdk/d62;->f:Lads_mobile_sdk/rr3;

    const/4 v1, 0x3

    iput v1, v4, Lads_mobile_sdk/d62;->g:I

    invoke-static {v11, v0, v4}, Lads_mobile_sdk/j62;->a(Lads_mobile_sdk/j62;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1ab
    .catchall {:try_start_170 .. :try_end_1ab} :catchall_195

    if-ne v0, v7, :cond_1ae

    :goto_1ad
    return-object v7

    :cond_1ae
    move-object v1, v3

    move-object v2, v5

    .line 660
    :goto_1b0
    :try_start_1b0
    check-cast v0, Lads_mobile_sdk/r31;
    :try_end_1b2
    .catchall {:try_start_1b0 .. :try_end_1b2} :catchall_28

    move-object v15, v0

    move-object v3, v1

    goto :goto_193

    .line 688
    :goto_1b5
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v15

    :goto_1b9
    move-object v1, v3

    :goto_1ba
    move-object v2, v5

    goto :goto_20d

    :catchall_1bc
    move-exception v0

    move-object v1, v6

    move-object v2, v8

    move-object v5, v10

    .line 798
    :goto_1c0
    :try_start_1c0
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 802
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_1f9

    .line 804
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1d6

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1d6

    .line 810
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1d6

    :catchall_1d3
    move-exception v0

    move-object v2, v0

    goto :goto_1fa

    .line 816
    :cond_1d6
    :goto_1d6
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1f1

    .line 817
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_1e9

    .line 818
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_1e3

    throw v0

    .line 819
    :cond_1e3
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 820
    :cond_1e9
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 821
    :cond_1f1
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 822
    :cond_1f9
    throw v0
    :try_end_1fa
    .catchall {:try_start_1c0 .. :try_end_1fa} :catchall_1d3

    .line 823
    :goto_1fa
    :try_start_1fa
    throw v2
    :try_end_1fb
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_1fb

    :catchall_1fb
    move-exception v0

    :try_start_1fc
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_200
    .catchall {:try_start_1fc .. :try_end_200} :catchall_200

    :catchall_200
    move-exception v0

    goto :goto_1ba

    :goto_202
    move-object v1, v6

    move-object v2, v10

    goto :goto_20d

    .line 824
    :cond_205
    :try_start_205
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_20b
    .catchall {:try_start_205 .. :try_end_20b} :catchall_12b

    :goto_20b
    move-object v1, v3

    move-object v2, v1

    .line 966
    :goto_20d
    :try_start_20d
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 970
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_246

    .line 972
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_223

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_223

    .line 978
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_223

    :catchall_220
    move-exception v0

    move-object v2, v0

    goto :goto_247

    .line 984
    :cond_223
    :goto_223
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_23e

    .line 985
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_236

    .line 986
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_230

    throw v0

    .line 987
    :cond_230
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 988
    :cond_236
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 989
    :cond_23e
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 990
    :cond_246
    throw v0
    :try_end_247
    .catchall {:try_start_20d .. :try_end_247} :catchall_220

    .line 1007
    :goto_247
    :try_start_247
    throw v2
    :try_end_248
    .catchall {:try_start_247 .. :try_end_248} :catchall_248

    :catchall_248
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
