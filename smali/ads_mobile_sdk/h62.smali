###### Class ads_mobile_sdk.h62 (ads_mobile_sdk.h62)
.class public final Lads_mobile_sdk/h62;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Closeable;

.field public d:Ljava/lang/Object;

.field public e:Lads_mobile_sdk/rr3;

.field public f:Lads_mobile_sdk/rr3;

.field public g:I

.field public final synthetic h:Lads_mobile_sdk/j62;

.field public final synthetic i:Lads_mobile_sdk/eo2;

.field public final synthetic j:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/h62;->h:Lads_mobile_sdk/j62;

    iput-object p1, p0, Lads_mobile_sdk/h62;->i:Lads_mobile_sdk/eo2;

    iput-object p3, p0, Lads_mobile_sdk/h62;->j:Lcom/google/gson/JsonObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lads_mobile_sdk/h62;

    iget-object v1, p0, Lads_mobile_sdk/h62;->h:Lads_mobile_sdk/j62;

    iget-object v2, p0, Lads_mobile_sdk/h62;->i:Lads_mobile_sdk/eo2;

    iget-object v3, p0, Lads_mobile_sdk/h62;->j:Lcom/google/gson/JsonObject;

    invoke-direct {v0, v2, v1, v3, p1}, Lads_mobile_sdk/h62;-><init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/h62;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h62;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/h62;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget v2, v1, Lads_mobile_sdk/h62;->g:I

    const-string v3, "key"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_71

    if-eq v2, v6, :cond_56

    if-eq v2, v5, :cond_34

    if-ne v2, v4, :cond_2c

    iget-object v0, v1, Lads_mobile_sdk/h62;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v1, Lads_mobile_sdk/h62;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    move-object v9, v3

    move-object/from16 v3, p1

    goto/16 :goto_189

    :catchall_29
    move-exception v0

    goto/16 :goto_1df

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_34
    iget-object v2, v1, Lads_mobile_sdk/h62;->f:Lads_mobile_sdk/rr3;

    iget-object v3, v1, Lads_mobile_sdk/h62;->e:Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/h62;->d:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/r31;

    iget-object v6, v1, Lads_mobile_sdk/h62;->c:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/h62;->b:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/h62;->a:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/j62;

    :try_start_46
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    move-object v11, v6

    move-object v6, v2

    move-object v2, v11

    move-object v11, v10

    move-object v10, v5

    move-object v5, v3

    move-object/from16 v3, p1

    goto/16 :goto_12e

    :catchall_53
    move-exception v0

    goto/16 :goto_193

    .line 106
    :cond_56
    iget-object v2, v1, Lads_mobile_sdk/h62;->d:Ljava/lang/Object;

    check-cast v2, Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/h62;->c:Ljava/io/Closeable;

    check-cast v9, Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/h62;->b:Ljava/lang/Object;

    check-cast v10, Lcom/google/gson/JsonObject;

    iget-object v11, v1, Lads_mobile_sdk/h62;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/j62;

    :try_start_66
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    move-object v12, v10

    move-object/from16 v10, p1

    goto :goto_c6

    :catchall_6d
    move-exception v0

    :goto_6e
    move-object v3, v9

    goto/16 :goto_1df

    .line 107
    :cond_71
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    sget-object v2, Lads_mobile_sdk/s11;->m0:Lads_mobile_sdk/s11;

    iget-object v9, v1, Lads_mobile_sdk/h62;->h:Lads_mobile_sdk/j62;

    iget-object v10, v1, Lads_mobile_sdk/h62;->i:Lads_mobile_sdk/eo2;

    iget-object v11, v1, Lads_mobile_sdk/h62;->j:Lcom/google/gson/JsonObject;

    .line 183
    sget-object v12, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {v2, v12, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 184
    :try_start_86
    iget-object v12, v9, Lads_mobile_sdk/j62;->e:Lads_mobile_sdk/ex0;

    .line 185
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    const-string v13, "gads:native_video_rect:enabled"

    .line 187
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v15, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v12, v13, v14, v15}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/16 v13, 0xe

    if-eqz v12, :cond_aa

    .line 204
    new-instance v12, Lads_mobile_sdk/v14;

    sget-object v14, Lads_mobile_sdk/u14;->e:Lads_mobile_sdk/u14;

    invoke-direct {v12, v14, v7, v7, v13}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    goto :goto_b1

    .line 205
    :cond_aa
    new-instance v12, Lads_mobile_sdk/v14;

    sget-object v14, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    invoke-direct {v12, v14, v7, v7, v13}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 206
    :goto_b1
    iput-object v9, v1, Lads_mobile_sdk/h62;->a:Ljava/lang/Object;

    iput-object v11, v1, Lads_mobile_sdk/h62;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/h62;->c:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/h62;->d:Ljava/lang/Object;

    iput v6, v1, Lads_mobile_sdk/h62;->g:I

    invoke-static {v9, v12, v10, v1}, Lads_mobile_sdk/j62;->a(Lads_mobile_sdk/j62;Lads_mobile_sdk/v14;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_bf
    .catchall {:try_start_86 .. :try_end_bf} :catchall_1dd

    if-ne v10, v0, :cond_c3

    goto/16 :goto_188

    :cond_c3
    move-object v12, v11

    move-object v11, v9

    move-object v9, v2

    .line 207
    :goto_c6
    :try_start_c6
    check-cast v10, Lads_mobile_sdk/v01;

    .line 218
    instance-of v13, v10, Lads_mobile_sdk/i01;

    if-eqz v13, :cond_d5

    .line 219
    check-cast v10, Lads_mobile_sdk/i01;

    .line 220
    invoke-static {v10, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d1
    .catchall {:try_start_c6 .. :try_end_d1} :catchall_6d

    .line 221
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v8

    .line 223
    :cond_d5
    :try_start_d5
    instance-of v13, v10, Lads_mobile_sdk/q01;

    if-eqz v13, :cond_1d7

    check-cast v10, Lads_mobile_sdk/q01;

    .line 224
    iget-object v10, v10, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 225
    check-cast v10, Lads_mobile_sdk/r31;

    .line 227
    invoke-virtual {v10}, Lads_mobile_sdk/r31;->b()Lads_mobile_sdk/g41;

    move-result-object v13

    .line 228
    new-instance v14, Lads_mobile_sdk/f62;

    invoke-direct {v14, v10, v12}, Lads_mobile_sdk/f62;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;)V

    .line 229
    iget-object v12, v13, Lads_mobile_sdk/g41;->s:Lads_mobile_sdk/tn3;

    .line 230
    sget-object v15, Lads_mobile_sdk/g41;->w:[Lkotlin/reflect/KProperty;

    const/16 v16, 0x5

    aget-object v15, v15, v16

    invoke-virtual {v12, v13, v15, v14}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    .line 231
    sget-object v12, Lads_mobile_sdk/s11;->R:Lads_mobile_sdk/s11;

    .line 287
    sget-object v13, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v6
    :try_end_ff
    .catchall {:try_start_d5 .. :try_end_ff} :catchall_6d

    .line 288
    :try_start_ff
    iget-object v12, v11, Lads_mobile_sdk/j62;->e:Lads_mobile_sdk/ex0;

    .line 289
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    const-string v13, "gads:native:video_url_with_protocol"

    .line 291
    const-string v14, "https://imasdk.googleapis.com/admob/sdkloader/native_video.html"

    .line 292
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    sget-object v3, Lads_mobile_sdk/yr;->o:Lads_mobile_sdk/wr;

    invoke-virtual {v12, v13, v14, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    iput-object v11, v1, Lads_mobile_sdk/h62;->a:Ljava/lang/Object;

    iput-object v9, v1, Lads_mobile_sdk/h62;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/h62;->c:Ljava/io/Closeable;

    iput-object v10, v1, Lads_mobile_sdk/h62;->d:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/h62;->e:Lads_mobile_sdk/rr3;

    iput-object v6, v1, Lads_mobile_sdk/h62;->f:Lads_mobile_sdk/rr3;

    iput v5, v1, Lads_mobile_sdk/h62;->g:I

    invoke-virtual {v10, v3, v1}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_12a
    .catchall {:try_start_ff .. :try_end_12a} :catchall_18f

    if-ne v3, v0, :cond_12d

    goto :goto_188

    :cond_12d
    move-object v5, v6

    .line 336
    :goto_12e
    :try_start_12e
    check-cast v3, Lads_mobile_sdk/v01;

    .line 397
    instance-of v12, v3, Lads_mobile_sdk/i01;

    if-eqz v12, :cond_141

    .line 398
    move-object v12, v3

    check-cast v12, Lads_mobile_sdk/i01;

    .line 399
    invoke-static {v12, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_13a
    .catchall {:try_start_12e .. :try_end_13a} :catchall_13b

    goto :goto_141

    :catchall_13b
    move-exception v0

    move-object v3, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v5

    goto :goto_193

    .line 400
    :cond_141
    :goto_141
    :try_start_141
    invoke-static {v6, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 401
    instance-of v5, v3, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_174

    .line 402
    iget-object v12, v11, Lads_mobile_sdk/j62;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 403
    sget-object v13, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v0, Lads_mobile_sdk/g62;

    invoke-direct {v0, v10, v8}, Lads_mobile_sdk/g62;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const-string v4, "<this>"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v0, v8}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 405
    check-cast v3, Lads_mobile_sdk/i01;

    .line 406
    invoke-static {v3, v7}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    move-object v3, v8

    goto :goto_18b

    .line 407
    :cond_174
    iput-object v9, v1, Lads_mobile_sdk/h62;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/h62;->b:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/h62;->c:Ljava/io/Closeable;

    iput-object v8, v1, Lads_mobile_sdk/h62;->d:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/h62;->e:Lads_mobile_sdk/rr3;

    iput-object v8, v1, Lads_mobile_sdk/h62;->f:Lads_mobile_sdk/rr3;

    iput v4, v1, Lads_mobile_sdk/h62;->g:I

    invoke-static {v11, v10, v1}, Lads_mobile_sdk/j62;->a(Lads_mobile_sdk/j62;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_189

    :goto_188
    return-object v0

    .line 408
    :cond_189
    :goto_189
    check-cast v3, Lads_mobile_sdk/r31;
    :try_end_18b
    .catchall {:try_start_141 .. :try_end_18b} :catchall_6d

    .line 439
    :goto_18b
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_18f
    move-exception v0

    move-object v3, v6

    move-object v6, v2

    move-object v2, v3

    .line 502
    :goto_193
    :try_start_193
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 506
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_1cc

    .line 508
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_1a9

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_1a9

    .line 514
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1a9

    :catchall_1a6
    move-exception v0

    move-object v3, v0

    goto :goto_1cd

    .line 520
    :cond_1a9
    :goto_1a9
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_1c4

    .line 521
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_1bc

    .line 522
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_1b6

    throw v0

    .line 523
    :cond_1b6
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 524
    :cond_1bc
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 525
    :cond_1c4
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 526
    :cond_1cc
    throw v0
    :try_end_1cd
    .catchall {:try_start_193 .. :try_end_1cd} :catchall_1a6

    .line 527
    :goto_1cd
    :try_start_1cd
    throw v3
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1ce

    :catchall_1ce
    move-exception v0

    :try_start_1cf
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1d3
    .catchall {:try_start_1cf .. :try_end_1d3} :catchall_1d3

    :catchall_1d3
    move-exception v0

    move-object v2, v6

    goto/16 :goto_6e

    .line 528
    :cond_1d7
    :try_start_1d7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_1dd
    .catchall {:try_start_1d7 .. :try_end_1dd} :catchall_6d

    :catchall_1dd
    move-exception v0

    move-object v3, v2

    .line 633
    :goto_1df
    :try_start_1df
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 637
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_218

    .line 639
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_1f5

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_1f5

    .line 645
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_1f5

    :catchall_1f2
    move-exception v0

    move-object v3, v0

    goto :goto_219

    .line 651
    :cond_1f5
    :goto_1f5
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_210

    .line 652
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_208

    .line 653
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_202

    throw v0

    .line 654
    :cond_202
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 655
    :cond_208
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 656
    :cond_210
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 657
    :cond_218
    throw v0
    :try_end_219
    .catchall {:try_start_1df .. :try_end_219} :catchall_1f2

    .line 674
    :goto_219
    :try_start_219
    throw v3
    :try_end_21a
    .catchall {:try_start_219 .. :try_end_21a} :catchall_21a

    :catchall_21a
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
