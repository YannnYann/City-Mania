###### Class ads_mobile_sdk.ci1 (ads_mobile_sdk.ci1)
.class public abstract Lads_mobile_sdk/ci1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/zh1;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lads_mobile_sdk/i2;

.field private final c:Lads_mobile_sdk/zy;

.field private final d:Lads_mobile_sdk/ks3;

.field private final e:Ljava/util/Optional;

.field private final f:Lads_mobile_sdk/v3;

.field private final g:Lads_mobile_sdk/fm0;

.field private final h:Lads_mobile_sdk/bn2;

.field private final i:Lads_mobile_sdk/s93;

.field private final j:Lads_mobile_sdk/eo2;

.field public k:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

.field private final l:Ljava/lang/String;

.field private volatile m:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lads_mobile_sdk/i2;Lads_mobile_sdk/zy;Lads_mobile_sdk/ks3;Ljava/util/Optional;Lads_mobile_sdk/v3;Lads_mobile_sdk/fm0;Lads_mobile_sdk/bn2;Lads_mobile_sdk/s93;Lads_mobile_sdk/eo2;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V
    .registers 13

    .line 1
    const-string v0, "adId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gmaWebView"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingAdEventListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phantomReferences"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeBrowsingManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementIdWrapper"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lads_mobile_sdk/ci1;->a:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lads_mobile_sdk/ci1;->b:Lads_mobile_sdk/i2;

    .line 62
    iput-object p3, p0, Lads_mobile_sdk/ci1;->c:Lads_mobile_sdk/zy;

    .line 63
    iput-object p4, p0, Lads_mobile_sdk/ci1;->d:Lads_mobile_sdk/ks3;

    .line 64
    iput-object p5, p0, Lads_mobile_sdk/ci1;->e:Ljava/util/Optional;

    .line 65
    iput-object p6, p0, Lads_mobile_sdk/ci1;->f:Lads_mobile_sdk/v3;

    .line 66
    iput-object p7, p0, Lads_mobile_sdk/ci1;->g:Lads_mobile_sdk/fm0;

    .line 67
    iput-object p8, p0, Lads_mobile_sdk/ci1;->h:Lads_mobile_sdk/bn2;

    .line 68
    iput-object p9, p0, Lads_mobile_sdk/ci1;->i:Lads_mobile_sdk/s93;

    .line 69
    iput-object p10, p0, Lads_mobile_sdk/ci1;->j:Lads_mobile_sdk/eo2;

    .line 75
    invoke-virtual {p11}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_56

    const-string p1, ""

    :cond_56
    iput-object p1, p0, Lads_mobile_sdk/ci1;->l:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->a()Lads_mobile_sdk/ks3;

    move-result-object p1

    iget-object p1, p1, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->f()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lads_mobile_sdk/zb;->b:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->a()Lads_mobile_sdk/ks3;

    move-result-object p1

    iget-object p1, p1, Lads_mobile_sdk/ks3;->d:Lads_mobile_sdk/zb;

    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object p2

    iget-object p2, p2, Lads_mobile_sdk/i2;->f0:Ljava/lang/String;

    iput-object p2, p1, Lads_mobile_sdk/zb;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lads_mobile_sdk/ci1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 67
    instance-of v0, p1, Lads_mobile_sdk/bi1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/bi1;

    iget v1, v0, Lads_mobile_sdk/bi1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bi1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/bi1;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/bi1;-><init>(Lads_mobile_sdk/ci1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/bi1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, v0, Lads_mobile_sdk/bi1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3a

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5d

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    iget-object p0, v0, Lads_mobile_sdk/bi1;->a:Lads_mobile_sdk/ci1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4a

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lads_mobile_sdk/ci1;->f:Lads_mobile_sdk/v3;

    iput-object p0, v0, Lads_mobile_sdk/bi1;->a:Lads_mobile_sdk/ci1;

    iput v4, v0, Lads_mobile_sdk/bi1;->d:I

    invoke-virtual {p1, v0}, Lads_mobile_sdk/v3;->j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4a

    goto :goto_5c

    .line 154
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lads_mobile_sdk/ci1;->h:Lads_mobile_sdk/bn2;

    iget-object v2, p0, Lads_mobile_sdk/ci1;->i:Lads_mobile_sdk/s93;

    const/4 v4, 0x0

    iput-object v4, v0, Lads_mobile_sdk/bi1;->a:Lads_mobile_sdk/ci1;

    iput v3, v0, Lads_mobile_sdk/bi1;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {p1, p0, v2, v0}, Lads_mobile_sdk/bn2;->a(Lads_mobile_sdk/bn2;Ljava/lang/Object;Lads_mobile_sdk/vm2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5d

    :goto_5c
    return-object v1

    .line 156
    :cond_5d
    :goto_5d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/ks3;
    .registers 2

    .line 63
    iget-object v0, p0, Lads_mobile_sdk/ci1;->d:Lads_mobile_sdk/ks3;

    return-object v0
.end method

.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 66
    invoke-static {p0, p1}, Lads_mobile_sdk/ci1;->a(Lads_mobile_sdk/ci1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;
    .registers 3

    .line 65
    iget-object p1, p0, Lads_mobile_sdk/ci1;->f:Lads_mobile_sdk/v3;

    invoke-virtual {p1}, Lads_mobile_sdk/v3;->e()Lkotlin/Unit;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_d

    return-object p1

    :cond_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V
    .registers 3

    .line 233
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iput-object p1, p0, Lads_mobile_sdk/ci1;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    return-void
.end method

.method public final a(Lkotlinx/coroutines/Job;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lads_mobile_sdk/ci1;->m:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b()Lads_mobile_sdk/i2;
    .registers 2

    .line 61
    iget-object v0, p0, Lads_mobile_sdk/ci1;->b:Lads_mobile_sdk/i2;

    return-object v0
.end method

.method public final c()Lads_mobile_sdk/eo2;
    .registers 2

    .line 69
    iget-object v0, p0, Lads_mobile_sdk/ci1;->j:Lads_mobile_sdk/eo2;

    return-object v0
.end method

.method public destroy()V
    .registers 13

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/ci1;->m:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 3
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_9
    iput-object v2, p0, Lads_mobile_sdk/ci1;->m:Lkotlinx/coroutines/Job;

    .line 5
    iget-object v0, p0, Lads_mobile_sdk/ci1;->f:Lads_mobile_sdk/v3;

    .line 6
    iget-object v3, v0, Lads_mobile_sdk/v3;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_ae

    .line 314
    new-instance v1, Lkotlin/Pair;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 315
    iget-object v4, v0, Lads_mobile_sdk/kq0;->b:Ljava/util/Map;

    .line 316
    invoke-direct {v1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 318
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 325
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const-string v5, "onAdDestroyed"

    if-nez v4, :cond_69

    .line 326
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lads_mobile_sdk/mq0;

    .line 327
    iget-object v7, v0, Lads_mobile_sdk/kq0;->c:Lads_mobile_sdk/ub3;

    .line 328
    new-instance v8, Lads_mobile_sdk/v2;

    invoke-direct {v8, v5, v6, v4, v2}, Lads_mobile_sdk/v2;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    const-string v4, "task"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v4, v7, Lads_mobile_sdk/ub3;->b:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v4, v8}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 370
    :cond_69
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/mq0;

    .line 371
    iget-object v6, v0, Lads_mobile_sdk/kq0;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 372
    new-instance v7, Lads_mobile_sdk/w2;

    invoke-direct {v7, v5, v4, v3, v2}, Lads_mobile_sdk/w2;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;)V

    move-object v3, v7

    .line 373
    sget-object v7, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 374
    const-string v4, "<this>"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    new-instance v9, Lads_mobile_sdk/ws3;

    invoke-direct {v9, v3, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_71

    :cond_ae
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lads_mobile_sdk/ci1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/google/gson/JsonObject;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;
    .registers 2

    .line 73
    iget-object v0, p0, Lads_mobile_sdk/ci1;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "responseInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Lads_mobile_sdk/zy;
    .registers 2

    .line 62
    iget-object v0, p0, Lads_mobile_sdk/ci1;->c:Lads_mobile_sdk/zy;

    return-object v0
.end method

.method public final j()Lads_mobile_sdk/fm0;
    .registers 2

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/ci1;->g:Lads_mobile_sdk/fm0;

    return-object v0
.end method

.method public final l()Lkotlinx/coroutines/Job;
    .registers 2

    .line 76
    iget-object v0, p0, Lads_mobile_sdk/ci1;->m:Lkotlinx/coroutines/Job;

    return-object v0
.end method
