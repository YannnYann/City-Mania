###### Class ads_mobile_sdk.s93 (ads_mobile_sdk.s93)
.class public final Lads_mobile_sdk/s93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;
.implements Lads_mobile_sdk/vm2;


# instance fields
.field public final a:Lads_mobile_sdk/e01;

.field public final b:Lads_mobile_sdk/j53;

.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lads_mobile_sdk/o93;

.field public final e:Lkotlinx/coroutines/sync/Mutex;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Lads_mobile_sdk/i80;

.field public final j:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/i2;Lads_mobile_sdk/o21;Lads_mobile_sdk/e01;Lads_mobile_sdk/j53;Lads_mobile_sdk/ex0;)V
    .registers 8

    .line 1
    const-string v0, "afmaVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p4, p0, Lads_mobile_sdk/s93;->a:Lads_mobile_sdk/e01;

    .line 54
    iput-object p5, p0, Lads_mobile_sdk/s93;->b:Lads_mobile_sdk/j53;

    .line 55
    iput-object p6, p0, Lads_mobile_sdk/s93;->c:Lads_mobile_sdk/ex0;

    .line 58
    iget-object p4, p2, Lads_mobile_sdk/i2;->o0:Lads_mobile_sdk/o93;

    iput-object p4, p0, Lads_mobile_sdk/s93;->d:Lads_mobile_sdk/o93;

    const/4 p5, 0x1

    const/4 p6, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-static {v0, p5, p6}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p5

    iput-object p5, p0, Lads_mobile_sdk/s93;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 62
    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p5, p0, Lads_mobile_sdk/s93;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p5, p0, Lads_mobile_sdk/s93;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance p5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p5, p0, Lads_mobile_sdk/s93;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    invoke-static {}, Lads_mobile_sdk/ra0;->v()Lads_mobile_sdk/i80;

    move-result-object p5

    .line 69
    invoke-virtual {p5}, Lads_mobile_sdk/i80;->h()Lads_mobile_sdk/i80;

    move-result-object p5

    .line 70
    iget-object p6, p2, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    const-string v0, ""

    if-eqz p6, :cond_5b

    iget-object p6, p6, Lads_mobile_sdk/vc1;->c:Ljava/lang/String;

    if-nez p6, :cond_5c

    :cond_5b
    move-object p6, v0

    :cond_5c
    invoke-virtual {p5, p6}, Lads_mobile_sdk/i80;->c(Ljava/lang/String;)Lads_mobile_sdk/i80;

    move-result-object p5

    .line 71
    iget-object p2, p2, Lads_mobile_sdk/i2;->J:Lads_mobile_sdk/vc1;

    if-eqz p2, :cond_6a

    iget-object p2, p2, Lads_mobile_sdk/vc1;->c:Ljava/lang/String;

    if-nez p2, :cond_69

    goto :goto_6a

    :cond_69
    move-object v0, p2

    :cond_6a
    :goto_6a
    invoke-virtual {p5, v0}, Lads_mobile_sdk/i80;->b(Ljava/lang/String;)Lads_mobile_sdk/i80;

    move-result-object p2

    .line 186
    invoke-static {}, Lads_mobile_sdk/k80;->v()Lads_mobile_sdk/j80;

    move-result-object p5

    const-string p6, "newBuilder(...)"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5}, Lads_mobile_sdk/px;->a(Lads_mobile_sdk/j80;)Lads_mobile_sdk/qx;

    move-result-object p5

    .line 187
    iget-object p4, p4, Lads_mobile_sdk/o93;->a:Ljava/lang/String;

    invoke-virtual {p5, p4}, Lads_mobile_sdk/qx;->a(Ljava/lang/String;)V

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 301
    invoke-virtual {p5}, Lads_mobile_sdk/qx;->a()Lads_mobile_sdk/k80;

    move-result-object p4

    .line 302
    invoke-virtual {p2, p4}, Lads_mobile_sdk/i80;->a(Lads_mobile_sdk/k80;)Lads_mobile_sdk/i80;

    move-result-object p2

    .line 418
    invoke-static {}, Lads_mobile_sdk/aa0;->v()Lads_mobile_sdk/z90;

    move-result-object p4

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lads_mobile_sdk/rx;->a(Lads_mobile_sdk/z90;)Lads_mobile_sdk/sx;

    move-result-object p4

    .line 419
    invoke-virtual {p4, p1}, Lads_mobile_sdk/sx;->a(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p3}, Lads_mobile_sdk/o21;->c()Z

    move-result p1

    invoke-virtual {p4, p1}, Lads_mobile_sdk/sx;->a(Z)V

    .line 532
    invoke-virtual {p4}, Lads_mobile_sdk/sx;->a()Lads_mobile_sdk/aa0;

    move-result-object p1

    .line 533
    invoke-virtual {p2, p1}, Lads_mobile_sdk/i80;->a(Lads_mobile_sdk/aa0;)Lads_mobile_sdk/i80;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/s93;->i:Lads_mobile_sdk/i80;

    .line 540
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/s93;->j:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a(Lads_mobile_sdk/s93;Ljava/lang/String;Lads_mobile_sdk/w90;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1
    const-string v2, "copyFromUtf8(...)"

    const-string v3, "builder"

    const-string v4, "newBuilder(...)"

    const-string v5, "value"

    instance-of v6, v1, Lads_mobile_sdk/p93;

    if-eqz v6, :cond_1f

    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/p93;

    iget v7, v6, Lads_mobile_sdk/p93;->h:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_1f

    sub-int/2addr v7, v8

    iput v7, v6, Lads_mobile_sdk/p93;->h:I

    goto :goto_24

    :cond_1f
    new-instance v6, Lads_mobile_sdk/p93;

    invoke-direct {v6, v0, v1}, Lads_mobile_sdk/p93;-><init>(Lads_mobile_sdk/s93;Lkotlin/coroutines/Continuation;)V

    :goto_24
    iget-object v1, v6, Lads_mobile_sdk/p93;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 113
    iget v8, v6, Lads_mobile_sdk/p93;->h:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_4d

    if-ne v8, v9, :cond_45

    iget-object v0, v6, Lads_mobile_sdk/p93;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v6, Lads_mobile_sdk/p93;->d:Ljava/util/Map;

    iget-object v8, v6, Lads_mobile_sdk/p93;->c:Lads_mobile_sdk/w90;

    iget-object v9, v6, Lads_mobile_sdk/p93;->b:Ljava/lang/String;

    iget-object v6, v6, Lads_mobile_sdk/p93;->a:Lads_mobile_sdk/s93;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, v6

    move-object v12, v7

    move-object v11, v8

    move-object v8, v9

    goto :goto_6b

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    iget-object v1, v0, Lads_mobile_sdk/s93;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 206
    iput-object v0, v6, Lads_mobile_sdk/p93;->a:Lads_mobile_sdk/s93;

    move-object/from16 v8, p1

    iput-object v8, v6, Lads_mobile_sdk/p93;->b:Ljava/lang/String;

    move-object/from16 v11, p2

    iput-object v11, v6, Lads_mobile_sdk/p93;->c:Lads_mobile_sdk/w90;

    move-object/from16 v12, p3

    iput-object v12, v6, Lads_mobile_sdk/p93;->d:Ljava/util/Map;

    iput-object v1, v6, Lads_mobile_sdk/p93;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v9, v6, Lads_mobile_sdk/p93;->h:I

    invoke-interface {v1, v10, v6}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v7, :cond_6b

    return-object v7

    .line 207
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v6, v0, Lads_mobile_sdk/s93;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/x90;

    .line 208
    sget-object v7, Lads_mobile_sdk/w90;->e:Lads_mobile_sdk/w90;
    :try_end_75
    .catchall {:try_start_6b .. :try_end_75} :catchall_13b

    if-ne v11, v7, :cond_87

    if-eqz v6, :cond_81

    .line 209
    :try_start_79
    invoke-virtual {v6, v11}, Lads_mobile_sdk/x90;->a(Lads_mobile_sdk/w90;)Lads_mobile_sdk/x90;

    goto :goto_81

    :catchall_7d
    move-exception v0

    move-object v2, v10

    goto/16 :goto_15a

    .line 210
    :cond_81
    :goto_81
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_7d

    .line 298
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 299
    :cond_87
    :try_start_87
    iget-object v6, v0, Lads_mobile_sdk/s93;->j:Ljava/util/LinkedHashMap;

    .line 300
    invoke-static {}, Lads_mobile_sdk/y90;->v()Lads_mobile_sdk/x90;

    move-result-object v7

    .line 301
    invoke-virtual {v7, v11}, Lads_mobile_sdk/x90;->a(Lads_mobile_sdk/w90;)Lads_mobile_sdk/x90;

    move-result-object v7

    .line 302
    iget-object v9, v0, Lads_mobile_sdk/s93;->j:Ljava/util/LinkedHashMap;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Lads_mobile_sdk/x90;->a(I)Lads_mobile_sdk/x90;

    move-result-object v7

    .line 303
    invoke-virtual {v7, v8}, Lads_mobile_sdk/x90;->a(Ljava/lang/String;)Lads_mobile_sdk/x90;

    move-result-object v7

    .line 385
    invoke-static {}, Lads_mobile_sdk/a90;->v()Lads_mobile_sdk/x80;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object v11, v0, Lads_mobile_sdk/s93;->d:Lads_mobile_sdk/o93;

    iget-object v11, v11, Lads_mobile_sdk/o93;->e:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11
    :try_end_b1
    .catchall {:try_start_87 .. :try_end_b1} :catchall_13b

    const-string v13, "build(...)"

    if-nez v11, :cond_13e

    .line 388
    :try_start_b5
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_bd
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 390
    iget-object v15, v0, Lads_mobile_sdk/s93;->d:Lads_mobile_sdk/o93;

    iget-object v15, v15, Lads_mobile_sdk/o93;->e:Ljava/util/List;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 p0, v0

    const-string v0, "ENGLISH"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "toLowerCase(...)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 391
    new-instance v0, Lads_mobile_sdk/lo0;

    .line 392
    invoke-virtual {v9}, Lads_mobile_sdk/x80;->h()Ljava/util/List;

    move-result-object v10

    const-string v15, "getHeadersList(...)"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-direct {v0, v10}, Lads_mobile_sdk/lo0;-><init>(Ljava/util/List;)V

    .line 394
    invoke-static {}, Lads_mobile_sdk/w80;->v()Lads_mobile_sdk/v80;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-static {v14}, Lads_mobile_sdk/du;->a(Ljava/lang/String;)Lads_mobile_sdk/du;

    move-result-object v14

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v10, v14}, Lads_mobile_sdk/v80;->a(Lads_mobile_sdk/du;)V

    .line 1828
    invoke-static {v12}, Lads_mobile_sdk/du;->a(Ljava/lang/String;)Lads_mobile_sdk/du;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1829
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3283
    invoke-virtual {v10, v12}, Lads_mobile_sdk/v80;->b(Lads_mobile_sdk/du;)V

    .line 3284
    invoke-virtual {v10}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v10

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lads_mobile_sdk/w80;

    .line 3285
    const-string v12, "<this>"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4831
    invoke-virtual {v9, v10}, Lads_mobile_sdk/x80;->a(Lads_mobile_sdk/w80;)V

    :cond_137
    move-object/from16 v0, p0

    const/4 v10, 0x0

    goto :goto_bd

    :catchall_13b
    move-exception v0

    const/4 v2, 0x0

    goto :goto_15a

    .line 4832
    :cond_13e
    invoke-virtual {v9}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/a90;

    .line 4833
    invoke-virtual {v7, v0}, Lads_mobile_sdk/x90;->a(Lads_mobile_sdk/a90;)Lads_mobile_sdk/x90;

    move-result-object v0

    const-string v2, "setRequest(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4834
    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4855
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_155
    .catchall {:try_start_b5 .. :try_end_155} :catchall_13b

    const/4 v2, 0x0

    .line 4919
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 4920
    :goto_15a
    invoke-interface {v1, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic a(Lads_mobile_sdk/s93;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 4925
    instance-of v0, p2, Lads_mobile_sdk/r93;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/r93;

    iget v1, v0, Lads_mobile_sdk/r93;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/r93;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/r93;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/r93;-><init>(Lads_mobile_sdk/s93;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/r93;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5012
    iget v2, v0, Lads_mobile_sdk/r93;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    if-ne v2, v3, :cond_30

    iget-object p0, v0, Lads_mobile_sdk/r93;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/r93;->b:Ljava/lang/String;

    iget-object v0, v0, Lads_mobile_sdk/r93;->a:Lads_mobile_sdk/s93;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4e

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5013
    iget-object p2, p0, Lads_mobile_sdk/s93;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 5119
    iput-object p0, v0, Lads_mobile_sdk/r93;->a:Lads_mobile_sdk/s93;

    iput-object p1, v0, Lads_mobile_sdk/r93;->b:Ljava/lang/String;

    iput-object p2, v0, Lads_mobile_sdk/r93;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/r93;->f:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    move-object p0, p2

    .line 5120
    :goto_4e
    :try_start_4e
    iget-object p2, v0, Lads_mobile_sdk/s93;->i:Lads_mobile_sdk/i80;

    invoke-virtual {p2, p1}, Lads_mobile_sdk/i80;->a(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_59

    .line 5230
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5231
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_59
    move-exception p1

    .line 5340
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lads_mobile_sdk/xg2;)Ljava/lang/Object;
    .registers 3

    .line 4924
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/s93;->a(Lads_mobile_sdk/s93;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 4922
    invoke-virtual {p0, p1}, Lads_mobile_sdk/s93;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_b

    return-object p1

    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 4
    const-string v1, "Blocked click action"

    .line 5
    invoke-static {v1, v0}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lads_mobile_sdk/s93;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    sget-object v0, Lads_mobile_sdk/w90;->e:Lads_mobile_sdk/w90;

    .line 8
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 9
    invoke-static {p0, p1, v0, v1, p2}, Lads_mobile_sdk/s93;->a(Lads_mobile_sdk/s93;Ljava/lang/String;Lads_mobile_sdk/w90;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1d

    return-object p1

    :cond_1d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/s93;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_b

    return-object p1

    :cond_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final f()Z
    .registers 5

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/s93;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    const-string v1, "key"

    const-string v2, "gads:native_click_protection:enabled"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v2, v1, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_26

    .line 119
    iget-object v0, p0, Lads_mobile_sdk/s93;->b:Lads_mobile_sdk/j53;

    sget-object v1, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    if-eq v0, v1, :cond_37

    sget-object v1, Lads_mobile_sdk/j53;->g:Lads_mobile_sdk/j53;

    if-eq v0, v1, :cond_37

    .line 120
    :cond_26
    iget-object v0, p0, Lads_mobile_sdk/s93;->d:Lads_mobile_sdk/o93;

    iget-boolean v0, v0, Lads_mobile_sdk/o93;->d:Z

    if-eqz v0, :cond_37

    .line 121
    iget-object v0, p0, Lads_mobile_sdk/s93;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    return v0

    :cond_37
    :goto_37
    const/4 v0, 0x1

    return v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/q93;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/q93;

    iget v1, v0, Lads_mobile_sdk/q93;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/q93;->e:I

    :goto_12
    move-object v5, v0

    goto :goto_1a

    :cond_14
    new-instance v0, Lads_mobile_sdk/q93;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/q93;-><init>(Lads_mobile_sdk/s93;Lkotlin/coroutines/Continuation;)V

    goto :goto_12

    :goto_1a
    iget-object p1, v5, Lads_mobile_sdk/q93;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 155
    iget v1, v5, Lads_mobile_sdk/q93;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_40

    if-eq v1, v3, :cond_38

    if-ne v1, v2, :cond_30

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e0

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    iget-object v1, v5, Lads_mobile_sdk/q93;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, v5, Lads_mobile_sdk/q93;->a:Lads_mobile_sdk/s93;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7c

    :cond_40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lads_mobile_sdk/s93;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 158
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 163
    :cond_4e
    iget-object p1, p0, Lads_mobile_sdk/s93;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_5f

    iget-object p1, p0, Lads_mobile_sdk/s93;->d:Lads_mobile_sdk/o93;

    iget-boolean p1, p1, Lads_mobile_sdk/o93;->c:Z

    if-nez p1, :cond_5f

    .line 164
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 167
    :cond_5f
    iget-object p1, p0, Lads_mobile_sdk/s93;->d:Lads_mobile_sdk/o93;

    iget-object p1, p1, Lads_mobile_sdk/o93;->b:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 168
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 171
    :cond_6c
    iget-object v1, p0, Lads_mobile_sdk/s93;->e:Lkotlinx/coroutines/sync/Mutex;

    .line 223
    iput-object p0, v5, Lads_mobile_sdk/q93;->a:Lads_mobile_sdk/s93;

    iput-object v1, v5, Lads_mobile_sdk/q93;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v5, Lads_mobile_sdk/q93;->e:I

    invoke-interface {v1, v4, v5}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7b

    goto :goto_df

    :cond_7b
    move-object v3, p0

    .line 224
    :goto_7c
    :try_start_7c
    iget-object p1, v3, Lads_mobile_sdk/s93;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/x90;

    .line 225
    iget-object v7, v3, Lads_mobile_sdk/s93;->i:Lads_mobile_sdk/i80;

    invoke-virtual {v7, v6}, Lads_mobile_sdk/i80;->a(Lads_mobile_sdk/x90;)V

    goto :goto_86

    :catchall_9e
    move-exception v0

    move-object p1, v0

    goto :goto_e3

    .line 227
    :cond_a1
    iget-object p1, v3, Lads_mobile_sdk/s93;->i:Lads_mobile_sdk/i80;

    invoke-virtual {p1}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ra0;
    :try_end_a9
    .catchall {:try_start_7c .. :try_end_a9} :catchall_9e

    .line 279
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 280
    iget-object v1, v3, Lads_mobile_sdk/s93;->a:Lads_mobile_sdk/e01;

    .line 281
    new-instance v6, Lads_mobile_sdk/e81;

    invoke-direct {v6}, Lads_mobile_sdk/e81;-><init>()V

    .line 282
    iget-object v3, v3, Lads_mobile_sdk/s93;->d:Lads_mobile_sdk/o93;

    iget-object v3, v3, Lads_mobile_sdk/o93;->b:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;)Lads_mobile_sdk/e81;

    move-result-object v3

    .line 283
    invoke-virtual {p1}, Lads_mobile_sdk/f;->c()[B

    move-result-object p1

    const-string v6, "toByteArray(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "application/x-protobuf"

    invoke-virtual {v3, v6, p1}, Lads_mobile_sdk/e81;->b(Ljava/lang/String;[B)Lads_mobile_sdk/e81;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lads_mobile_sdk/e81;->a()Lads_mobile_sdk/f81;

    move-result-object p1

    .line 285
    iput-object v4, v5, Lads_mobile_sdk/q93;->a:Lads_mobile_sdk/s93;

    iput-object v4, v5, Lads_mobile_sdk/q93;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v2, v5, Lads_mobile_sdk/q93;->e:I

    const/4 v4, 0x0

    const/16 v6, 0x1e

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/e01;->a(Lads_mobile_sdk/e01;Lads_mobile_sdk/f81;Lkotlin/time/Duration;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e0

    :goto_df
    return-object v0

    .line 291
    :cond_e0
    :goto_e0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 335
    :goto_e3
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
