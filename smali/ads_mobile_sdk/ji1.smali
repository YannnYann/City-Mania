###### Class ads_mobile_sdk.ji1 (ads_mobile_sdk.ji1)
.class public final Lads_mobile_sdk/ji1;
.super Lads_mobile_sdk/kq0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/li1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Lads_mobile_sdk/ub3;)V
    .registers 5

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialEventQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lads_mobile_sdk/kq0;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Lads_mobile_sdk/ub3;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18

    .line 18
    new-instance v0, Lkotlin/Pair;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 19
    iget-object v2, p0, Lads_mobile_sdk/kq0;->b:Ljava/util/Map;

    .line 20
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 22
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 29
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v4, "onAdLoaded"

    if-nez v2, :cond_5b

    .line 30
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lads_mobile_sdk/mq0;

    .line 31
    iget-object v2, p0, Lads_mobile_sdk/kq0;->c:Lads_mobile_sdk/ub3;

    .line 32
    new-instance v3, Lads_mobile_sdk/hi1;

    const/4 v7, 0x0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lads_mobile_sdk/hi1;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string v5, "task"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v2, v2, Lads_mobile_sdk/ub3;->b:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 74
    :cond_5b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/mq0;

    .line 75
    iget-object v1, p0, Lads_mobile_sdk/kq0;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 76
    new-instance v3, Lads_mobile_sdk/ii1;

    const/4 v7, 0x0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v10}, Lads_mobile_sdk/ii1;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 77
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 78
    const-string v2, "<this>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "block"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    new-instance v10, Lads_mobile_sdk/ws3;

    const/4 v2, 0x0

    invoke-direct {v10, v3, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_63

    .line 337
    :cond_a8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16

    .line 379
    new-instance p3, Lkotlin/Pair;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lads_mobile_sdk/kq0;->b:Ljava/util/Map;

    .line 381
    invoke-direct {p3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 383
    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 390
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const-string v3, "onAdFailedToLoad"

    if-nez v1, :cond_5a

    .line 391
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lads_mobile_sdk/mq0;

    .line 392
    iget-object v1, p0, Lads_mobile_sdk/kq0;->c:Lads_mobile_sdk/ub3;

    .line 393
    new-instance v2, Lads_mobile_sdk/fi1;

    const/4 v6, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/fi1;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    const-string p1, "task"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iget-object p1, v1, Lads_mobile_sdk/ub3;->b:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v7

    goto :goto_27

    :cond_5a
    move-object v7, p1

    move-object v8, p2

    .line 435
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lads_mobile_sdk/mq0;

    .line 436
    iget-object p2, p0, Lads_mobile_sdk/kq0;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 437
    new-instance v2, Lads_mobile_sdk/gi1;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lads_mobile_sdk/gi1;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    move-object p3, v7

    move-object v0, v8

    .line 438
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 439
    const-string v1, "<this>"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    new-instance v9, Lads_mobile_sdk/ws3;

    const/4 v1, 0x0

    invoke-direct {v9, v2, v1}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object v7, p3

    move-object v8, v0

    goto :goto_64

    .line 698
    :cond_a9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
