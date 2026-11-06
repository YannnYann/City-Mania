###### Class ads_mobile_sdk.x83 (ads_mobile_sdk.x83)
.class public final Lads_mobile_sdk/x83;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/b93;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final synthetic d:Lads_mobile_sdk/j53;

.field public final synthetic e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/b93;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/x83;->b:Lads_mobile_sdk/b93;

    iput-object p2, p0, Lads_mobile_sdk/x83;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object p3, p0, Lads_mobile_sdk/x83;->d:Lads_mobile_sdk/j53;

    iput-object p4, p0, Lads_mobile_sdk/x83;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 8

    .line 1
    new-instance v0, Lads_mobile_sdk/x83;

    iget-object v1, p0, Lads_mobile_sdk/x83;->b:Lads_mobile_sdk/b93;

    iget-object v2, p0, Lads_mobile_sdk/x83;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v3, p0, Lads_mobile_sdk/x83;->d:Lads_mobile_sdk/j53;

    iget-object v4, p0, Lads_mobile_sdk/x83;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/x83;-><init>(Lads_mobile_sdk/b93;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/x83;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/x83;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/x83;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 116
    iget v2, v0, Lads_mobile_sdk/x83;->a:I

    const-string v3, "<this>"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_27

    if-eq v2, v6, :cond_20

    if-ne v2, v4, :cond_18

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_17b

    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_115

    :cond_27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    iget-object v2, v0, Lads_mobile_sdk/x83;->b:Lads_mobile_sdk/b93;

    .line 119
    iget-object v7, v2, Lads_mobile_sdk/b93;->j:Lads_mobile_sdk/m13;

    .line 120
    iget-object v7, v7, Lads_mobile_sdk/m13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    if-eqz v7, :cond_35

    .line 121
    iget-object v7, v7, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    goto :goto_36

    :cond_35
    move-object v7, v5

    :goto_36
    if-eqz v7, :cond_ff

    .line 122
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 123
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 124
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 125
    const-string v9, "rtb_adapters"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v9

    if-eqz v9, :cond_6a

    .line 127
    invoke-virtual {v9}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    if-lez v10, :cond_6a

    .line 128
    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6c

    .line 130
    :cond_6a
    const-string v9, ""

    .line 132
    :goto_6c
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_76

    goto :goto_41

    .line 300
    :cond_76
    invoke-static {}, Lads_mobile_sdk/ts;->y()Lads_mobile_sdk/ss;

    move-result-object v10

    const-string v11, "newBuilder(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    const-string v11, "builder"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    const-string v11, "value"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v10, v9}, Lads_mobile_sdk/ss;->a(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v10, v6}, Lads_mobile_sdk/ss;->b(Z)V

    .line 349
    invoke-virtual {v10, v6}, Lads_mobile_sdk/ss;->a(Z)V

    .line 350
    const-string v12, "data"

    invoke-virtual {v8, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    if-eqz v8, :cond_9f

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    goto :goto_a0

    :cond_9f
    move-object v8, v5

    :goto_a0
    if-eqz v8, :cond_ed

    .line 352
    invoke-virtual {v8}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_aa
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ed

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 353
    new-instance v13, Lads_mobile_sdk/no0;

    .line 354
    invoke-virtual {v10}, Lads_mobile_sdk/ss;->h()Ljava/util/Map;

    move-result-object v14

    const-string v15, "getServerParametersMap(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-direct {v13, v14}, Lads_mobile_sdk/no0;-><init>(Ljava/util/Map;)V

    .line 356
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    const-string v15, "<get-key>(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonElement;

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "getAsString(...)"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "key"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v10, v14, v12}, Lads_mobile_sdk/ss;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    .line 512
    :cond_ed
    invoke-virtual {v10}, Lads_mobile_sdk/vz0$a;->b()Lads_mobile_sdk/vz0;

    move-result-object v8

    const-string v10, "build(...)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lads_mobile_sdk/ts;

    .line 513
    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_41

    :cond_fd
    :goto_fd
    move-object v11, v2

    goto :goto_118

    .line 514
    :cond_ff
    iget-object v2, v2, Lads_mobile_sdk/b93;->c:Lads_mobile_sdk/pn;

    .line 515
    iget-object v7, v0, Lads_mobile_sdk/x83;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lads_mobile_sdk/x83;->d:Lads_mobile_sdk/j53;

    .line 516
    iget-object v8, v8, Lads_mobile_sdk/j53;->a:Ljava/lang/String;

    .line 517
    iput v6, v0, Lads_mobile_sdk/x83;->a:I

    invoke-virtual {v2, v7, v8, v0}, Lads_mobile_sdk/pn;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_115

    goto/16 :goto_17a

    .line 518
    :cond_115
    :goto_115
    check-cast v2, Ljava/util/Map;

    goto :goto_fd

    .line 528
    :goto_118
    invoke-static {v5, v6, v5}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    .line 529
    iget-object v8, v0, Lads_mobile_sdk/x83;->b:Lads_mobile_sdk/b93;

    iget-object v10, v0, Lads_mobile_sdk/x83;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v12, v0, Lads_mobile_sdk/x83;->d:Lads_mobile_sdk/j53;

    iget-object v13, v0, Lads_mobile_sdk/x83;->e:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 661
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 662
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_135
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_172

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/util/Map$Entry;

    .line 663
    iget-object v15, v8, Lads_mobile_sdk/b93;->f:Lkotlinx/coroutines/CoroutineScope;

    .line 664
    new-instance v7, Lads_mobile_sdk/w83;

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lads_mobile_sdk/w83;-><init>(Lads_mobile_sdk/b93;Ljava/util/Map$Entry;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Map;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)V

    move-object v9, v12

    move-object v12, v7

    move-object v7, v9

    move-object v9, v13

    .line 665
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "context"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "block"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v15

    .line 923
    new-instance v15, Lads_mobile_sdk/ws3;

    invoke-direct {v15, v12, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v12, v13

    move-object v13, v2

    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 924
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v7

    move-object v2, v13

    move-object v13, v9

    goto :goto_135

    .line 925
    :cond_172
    iput v4, v0, Lads_mobile_sdk/x83;->a:I

    invoke-static {v6, v0}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_17b

    :goto_17a
    return-object v1

    .line 926
    :cond_17b
    :goto_17b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
