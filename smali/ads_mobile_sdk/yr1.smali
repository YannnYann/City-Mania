###### Class ads_mobile_sdk.yr1 (ads_mobile_sdk.yr1)
.class public abstract Lads_mobile_sdk/yr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/nr1;


# instance fields
.field public final a:Lads_mobile_sdk/g83;

.field public final b:Lads_mobile_sdk/ks3;

.field public final c:Lads_mobile_sdk/o21;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Lads_mobile_sdk/ex0;

.field public final f:Lkotlinx/coroutines/sync/Mutex;

.field public final g:Ljava/util/LinkedHashMap;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Lads_mobile_sdk/p02;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g83;Lads_mobile_sdk/ks3;Lads_mobile_sdk/o21;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ex0;)V
    .registers 7

    .line 1
    const-string v0, "rootTraceCreator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lads_mobile_sdk/yr1;->a:Lads_mobile_sdk/g83;

    .line 59
    iput-object p2, p0, Lads_mobile_sdk/yr1;->b:Lads_mobile_sdk/ks3;

    .line 60
    iput-object p3, p0, Lads_mobile_sdk/yr1;->c:Lads_mobile_sdk/o21;

    .line 61
    iput-object p4, p0, Lads_mobile_sdk/yr1;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 62
    iput-object p5, p0, Lads_mobile_sdk/yr1;->e:Lads_mobile_sdk/ex0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 66
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 67
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    .line 70
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    .line 72
    new-instance p1, Lads_mobile_sdk/p02;

    invoke-direct {p1, p3}, Lads_mobile_sdk/p02;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2
    instance-of v4, v3, Lads_mobile_sdk/qr1;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, Lads_mobile_sdk/qr1;

    iget v5, v4, Lads_mobile_sdk/qr1;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lads_mobile_sdk/qr1;->j:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lads_mobile_sdk/qr1;

    invoke-direct {v4, v0, v3}, Lads_mobile_sdk/qr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_20
    iget-object v3, v4, Lads_mobile_sdk/qr1;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 139
    iget v6, v4, Lads_mobile_sdk/qr1;->j:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_8e

    if-eq v6, v10, :cond_75

    if-eq v6, v9, :cond_5d

    if-eq v6, v8, :cond_44

    if-ne v6, v7, :cond_3c

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1d7

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    iget-object v0, v4, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v4, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iget-object v6, v4, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iget-object v8, v4, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iget-object v9, v4, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iget-object v12, v4, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v9

    move-object v9, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_17e

    :cond_5d
    iget-object v0, v4, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v4, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v4, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iget-object v6, v4, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iget-object v8, v4, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iget-object v9, v4, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iget-object v12, v4, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_10b

    :cond_75
    iget-object v0, v4, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v4, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iget-object v2, v4, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iget-object v6, v4, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iget-object v8, v4, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iget-object v9, v4, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v12

    move-object v12, v6

    move-object v6, v2

    move-object v2, v12

    move-object v12, v0

    move-object v0, v9

    goto :goto_d8

    :cond_8e
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9a

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 141
    :cond_9a
    const-string v3, "ad_mid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown/Unexpected GMSG without a handler: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 145
    const-string v13, "/result"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e2

    .line 146
    iget-object v8, v0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput-object v0, v4, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v1, v4, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v2, v4, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v6, v4, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v3, v4, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v12, v4, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v10, v4, Lads_mobile_sdk/qr1;->j:I

    invoke-virtual {v8, v4}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_d8

    goto/16 :goto_1d6

    .line 147
    :cond_d8
    :goto_d8
    check-cast v8, Lads_mobile_sdk/r41;

    move-object v14, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v15, v8

    goto/16 :goto_18f

    :cond_e2
    if-eqz v3, :cond_160

    .line 148
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_ec

    goto/16 :goto_160

    .line 152
    :cond_ec
    iget-object v8, v0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 309
    iput-object v0, v4, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v1, v4, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v2, v4, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v6, v4, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v3, v4, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v12, v4, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, v4, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v4, Lads_mobile_sdk/qr1;->j:I

    invoke-interface {v8, v11, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_106

    goto/16 :goto_1d6

    :cond_106
    move-object/from16 v19, v12

    move-object v12, v0

    move-object/from16 v0, v19

    .line 310
    :goto_10b
    :try_start_10b
    iget-object v9, v12, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_11e

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    goto :goto_11f

    :catchall_11c
    move-exception v0

    goto :goto_15c

    :cond_11e
    move-object v9, v11

    :goto_11f
    if-eqz v9, :cond_13f

    .line 311
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_13f

    .line 312
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GMSG handler for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has been garbage collected"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_13f
    if-eqz v9, :cond_149

    .line 315
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/r41;

    if-nez v9, :cond_151

    .line 316
    :cond_149
    iget-object v9, v12, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/r41;
    :try_end_151
    .catchall {:try_start_10b .. :try_end_151} :catchall_11c

    .line 471
    :cond_151
    invoke-interface {v8, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v15, v9

    :goto_159
    move-object v14, v12

    move-object v12, v0

    goto :goto_18f

    .line 472
    :goto_15c
    invoke-interface {v8, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 473
    :cond_160
    :goto_160
    iget-object v9, v0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 632
    iput-object v0, v4, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v1, v4, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v2, v4, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v6, v4, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v3, v4, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v12, v4, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v9, v4, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v8, v4, Lads_mobile_sdk/qr1;->j:I

    invoke-interface {v9, v11, v4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_179

    goto :goto_1d6

    :cond_179
    move-object/from16 v19, v12

    move-object v12, v0

    move-object/from16 v0, v19

    .line 633
    :goto_17e
    :try_start_17e
    iget-object v8, v12, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/r41;
    :try_end_186
    .catchall {:try_start_17e .. :try_end_186} :catchall_305

    .line 796
    invoke-interface {v9, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object v15, v8

    goto :goto_159

    :goto_18f
    if-eqz v15, :cond_1ea

    .line 797
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching gmsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;)V

    .line 798
    new-instance v13, Lads_mobile_sdk/sr1;

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v18}, Lads_mobile_sdk/sr1;-><init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r41;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 808
    invoke-interface {v15}, Lads_mobile_sdk/r41;->i()Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 809
    iput-object v11, v4, Lads_mobile_sdk/qr1;->a:Lads_mobile_sdk/yr1;

    iput-object v11, v4, Lads_mobile_sdk/qr1;->b:Lads_mobile_sdk/r31;

    iput-object v11, v4, Lads_mobile_sdk/qr1;->c:Landroid/net/Uri;

    iput-object v11, v4, Lads_mobile_sdk/qr1;->d:Ljava/lang/String;

    iput-object v11, v4, Lads_mobile_sdk/qr1;->e:Ljava/lang/String;

    iput-object v11, v4, Lads_mobile_sdk/qr1;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v11, v4, Lads_mobile_sdk/qr1;->g:Lkotlinx/coroutines/sync/Mutex;

    iput v7, v4, Lads_mobile_sdk/qr1;->j:I

    invoke-virtual {v13, v4}, Lads_mobile_sdk/sr1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_1d7

    :goto_1d6
    return-object v5

    .line 826
    :cond_1d7
    :goto_1d7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 827
    :cond_1da
    iget-object v1, v14, Lads_mobile_sdk/yr1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/rr1;

    invoke-direct {v4, v13, v11}, Lads_mobile_sdk/rr1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_2c1

    .line 829
    :cond_1ea
    iget-object v0, v14, Lads_mobile_sdk/yr1;->e:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Lads_mobile_sdk/ex0;->T()Lads_mobile_sdk/eb3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/eb3;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 830
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 832
    :cond_1fd
    iget-object v0, v14, Lads_mobile_sdk/yr1;->a:Lads_mobile_sdk/g83;

    .line 833
    sget-object v1, Lads_mobile_sdk/s11;->R0:Lads_mobile_sdk/s11;

    .line 834
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 835
    iget-object v4, v14, Lads_mobile_sdk/yr1;->b:Lads_mobile_sdk/ks3;

    .line 982
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v5

    const/4 v6, 0x6

    const-string v7, ". Ad Key: "

    if-nez v5, :cond_288

    .line 983
    invoke-static {v0, v1, v2, v4}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 984
    :try_start_214
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    sget-object v2, Lads_mobile_sdk/u11;->b:Lads_mobile_sdk/u11;

    iput-object v2, v0, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 985
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 986
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 987
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_242
    .catchall {:try_start_214 .. :try_end_242} :catchall_247

    .line 1136
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_2c1

    :catchall_247
    move-exception v0

    .line 1144
    :try_start_248
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1148
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_281

    .line 1150
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_25e

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_25e

    .line 1156
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_25e

    :catchall_25b
    move-exception v0

    move-object v2, v0

    goto :goto_282

    .line 1162
    :cond_25e
    :goto_25e
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_279

    .line 1163
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_271

    .line 1164
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_26b

    throw v0

    .line 1165
    :cond_26b
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1166
    :cond_271
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1167
    :cond_279
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1168
    :cond_281
    throw v0
    :try_end_282
    .catchall {:try_start_248 .. :try_end_282} :catchall_25b

    .line 1169
    :goto_282
    :try_start_282
    throw v2
    :try_end_283
    .catchall {:try_start_282 .. :try_end_283} :catchall_283

    :catchall_283
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1203
    :cond_288
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, v10}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1204
    :try_start_290
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    sget-object v2, Lads_mobile_sdk/u11;->b:Lads_mobile_sdk/u11;

    iput-object v2, v0, Lads_mobile_sdk/uj2;->l:Lads_mobile_sdk/u11;

    .line 1205
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 1206
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1207
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2be
    .catchall {:try_start_290 .. :try_end_2be} :catchall_2c4

    .line 1393
    invoke-static {v1, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1394
    :goto_2c1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_2c4
    move-exception v0

    .line 1581
    :try_start_2c5
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1585
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_2fe

    .line 1587
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_2db

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_2db

    .line 1593
    invoke-virtual {v1, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2db

    :catchall_2d8
    move-exception v0

    move-object v2, v0

    goto :goto_2ff

    .line 1599
    :cond_2db
    :goto_2db
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_2f6

    .line 1600
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_2ee

    .line 1601
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_2e8

    throw v0

    .line 1602
    :cond_2e8
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1603
    :cond_2ee
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1604
    :cond_2f6
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1605
    :cond_2fe
    throw v0
    :try_end_2ff
    .catchall {:try_start_2c5 .. :try_end_2ff} :catchall_2d8

    .line 1606
    :goto_2ff
    :try_start_2ff
    throw v2
    :try_end_300
    .catchall {:try_start_2ff .. :try_end_300} :catchall_300

    :catchall_300
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_305
    move-exception v0

    .line 1607
    invoke-interface {v9, v11}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1668
    instance-of v0, p3, Lads_mobile_sdk/wr1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/wr1;

    iget v1, v0, Lads_mobile_sdk/wr1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wr1;->h:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/wr1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/wr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/wr1;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1741
    iget v2, v0, Lads_mobile_sdk/wr1;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5b

    if-eq v2, v5, :cond_57

    if-eq v2, v4, :cond_45

    if-ne v2, v3, :cond_3d

    iget-object p0, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iget-object p2, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, p2

    goto/16 :goto_d7

    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    iget-object p0, v0, Lads_mobile_sdk/wr1;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iget-object v1, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, v0

    goto :goto_99

    :cond_57
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_71

    :cond_5b
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1744
    invoke-interface {p2}, Lads_mobile_sdk/r41;->f()Lads_mobile_sdk/r41;

    move-result-object p3

    .line 1745
    instance-of v2, p3, Lads_mobile_sdk/t53;

    if-eqz v2, :cond_74

    .line 1746
    iget-object p0, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput v5, v0, Lads_mobile_sdk/wr1;->h:I

    invoke-virtual {p0, p3, v0}, Lads_mobile_sdk/p02;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_71

    goto :goto_d4

    .line 1759
    :cond_71
    :goto_71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1760
    :cond_74
    invoke-interface {p2}, Lads_mobile_sdk/r41;->k()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c2

    .line 1761
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    goto :goto_c2

    .line 1762
    :cond_81
    iget-object v2, p0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 1959
    iput-object p0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    iput-object p1, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iput-object p2, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/wr1;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v0, Lads_mobile_sdk/wr1;->h:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_96

    goto :goto_d4

    :cond_96
    move-object v1, p1

    move-object p1, p2

    move-object p2, p3

    .line 1960
    :goto_99
    :try_start_99
    iget-object p3, p0, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_ab

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_ab

    :catchall_a9
    move-exception p0

    goto :goto_be

    .line 1961
    :cond_ab
    :goto_ab
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    iget-object p0, p0, Lads_mobile_sdk/yr1;->h:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ba
    .catchall {:try_start_99 .. :try_end_ba} :catchall_a9

    .line 2160
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_e1

    .line 2161
    :goto_be
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    .line 2162
    :cond_c2
    :goto_c2
    iget-object p2, p0, Lads_mobile_sdk/yr1;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 2364
    iput-object p0, v0, Lads_mobile_sdk/wr1;->a:Lads_mobile_sdk/yr1;

    iput-object p1, v0, Lads_mobile_sdk/wr1;->b:Ljava/lang/String;

    iput-object p3, v0, Lads_mobile_sdk/wr1;->c:Lads_mobile_sdk/r41;

    iput-object p2, v0, Lads_mobile_sdk/wr1;->d:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/wr1;->h:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_d5

    :goto_d4
    return-object v1

    :cond_d5
    move-object v0, p0

    move-object p0, p2

    .line 2365
    :goto_d7
    :try_start_d7
    iget-object p2, v0, Lads_mobile_sdk/yr1;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_de
    .catchall {:try_start_d7 .. :try_end_de} :catchall_e4

    .line 2571
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2572
    :goto_e1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_e4
    move-exception p1

    .line 2775
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public static a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    .line 1609
    instance-of v0, p2, Lads_mobile_sdk/tr1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/tr1;

    iget v1, v0, Lads_mobile_sdk/tr1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tr1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/tr1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/tr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/tr1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1610
    iget v2, v0, Lads_mobile_sdk/tr1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    if-eq v2, v3, :cond_36

    const/4 p0, 0x2

    if-ne v2, p0, :cond_2e

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1634
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1635
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    iget-object p1, v0, Lads_mobile_sdk/tr1;->b:Ljava/lang/String;

    iget-object p0, v0, Lads_mobile_sdk/tr1;->a:Lads_mobile_sdk/yr1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_3e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1636
    iget-object p2, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput-object p0, v0, Lads_mobile_sdk/tr1;->a:Lads_mobile_sdk/yr1;

    iput-object p1, v0, Lads_mobile_sdk/tr1;->b:Ljava/lang/String;

    iput v3, v0, Lads_mobile_sdk/tr1;->e:I

    invoke-virtual {p2, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_50

    return-object v1

    .line 1637
    :cond_50
    :goto_50
    check-cast p2, Lads_mobile_sdk/t53;

    const/4 v1, 0x0

    if-nez p2, :cond_61

    .line 1641
    const-string p0, "Unknown/Unexpected GMSG without a handler: result"

    invoke-static {p0, v1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x6

    .line 1642
    invoke-static {p0, v1, p1}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1643
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1646
    :cond_61
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    :try_start_63
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_70} :catch_71

    goto :goto_90

    :catch_71
    move-exception v0

    move-object p1, v0

    .line 1647
    const-string v0, "t"

    invoke-static {p1, v0, p1}, Lads_mobile_sdk/a2;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Exception;)Lads_mobile_sdk/uj2;

    move-result-object v0

    .line 1648
    iget-object v0, v0, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 1649
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_89

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_89
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v1

    :goto_90
    if-nez p1, :cond_95

    .line 1650
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1651
    :cond_95
    new-instance v0, Lads_mobile_sdk/vr1;

    invoke-direct {v0, p0, p2, p1, v1}, Lads_mobile_sdk/vr1;-><init>(Lads_mobile_sdk/yr1;Lads_mobile_sdk/t53;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    .line 1664
    iget-object v2, p0, Lads_mobile_sdk/yr1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/ur1;

    invoke-direct {v5, v0, v1}, Lads_mobile_sdk/ur1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1666
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 2778
    instance-of v0, p3, Lads_mobile_sdk/xr1;

    if-eqz v0, :cond_13

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/xr1;

    iget v1, v0, Lads_mobile_sdk/xr1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/xr1;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/xr1;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/xr1;-><init>(Lads_mobile_sdk/yr1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p3, v0, Lads_mobile_sdk/xr1;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2880
    iget v2, v0, Lads_mobile_sdk/xr1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_66

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p2, v0, Lads_mobile_sdk/xr1;->b:Lkotlinx/coroutines/CompletableDeferred;

    iget-object p1, v0, Lads_mobile_sdk/xr1;->a:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_3c
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2884
    iget-object p0, p0, Lads_mobile_sdk/yr1;->i:Lads_mobile_sdk/p02;

    iput-object p1, v0, Lads_mobile_sdk/xr1;->a:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/xr1;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput v4, v0, Lads_mobile_sdk/xr1;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/p02;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4e

    goto :goto_65

    .line 2885
    :cond_4e
    :goto_4e
    check-cast p3, Lads_mobile_sdk/t53;

    if-nez p3, :cond_58

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_58
    const/4 p0, 0x0

    .line 2886
    iput-object p0, v0, Lads_mobile_sdk/xr1;->a:Ljava/lang/String;

    iput-object p0, v0, Lads_mobile_sdk/xr1;->b:Lkotlinx/coroutines/CompletableDeferred;

    iput v3, v0, Lads_mobile_sdk/xr1;->e:I

    invoke-virtual {p3, p1, p2, v0}, Lads_mobile_sdk/t53;->a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_66

    :goto_65
    return-object v1

    .line 2887
    :cond_66
    :goto_66
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Lads_mobile_sdk/r31;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/r31;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1608
    invoke-static {p0, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1667
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lads_mobile_sdk/r41;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lads_mobile_sdk/w21;)Ljava/lang/Object;
    .registers 4

    .line 2777
    invoke-static {p0, p1, p2, p3}, Lads_mobile_sdk/yr1;->a(Lads_mobile_sdk/yr1;Ljava/lang/String;Lkotlinx/coroutines/CompletableDeferred;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
