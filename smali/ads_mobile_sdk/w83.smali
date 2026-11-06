###### Class ads_mobile_sdk.w83 (ads_mobile_sdk.w83)
.class public final Lads_mobile_sdk/w83;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/b93;

.field public final synthetic c:Ljava/util/Map$Entry;

.field public final synthetic d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final synthetic e:Ljava/util/Map;

.field public final synthetic f:Lads_mobile_sdk/j53;

.field public final synthetic g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/b93;Ljava/util/Map$Entry;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Map;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/w83;->b:Lads_mobile_sdk/b93;

    iput-object p2, p0, Lads_mobile_sdk/w83;->c:Ljava/util/Map$Entry;

    iput-object p3, p0, Lads_mobile_sdk/w83;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iput-object p4, p0, Lads_mobile_sdk/w83;->e:Ljava/util/Map;

    iput-object p5, p0, Lads_mobile_sdk/w83;->f:Lads_mobile_sdk/j53;

    iput-object p6, p0, Lads_mobile_sdk/w83;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11

    .line 1
    new-instance v0, Lads_mobile_sdk/w83;

    iget-object v1, p0, Lads_mobile_sdk/w83;->b:Lads_mobile_sdk/b93;

    iget-object v2, p0, Lads_mobile_sdk/w83;->c:Ljava/util/Map$Entry;

    iget-object v3, p0, Lads_mobile_sdk/w83;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v4, p0, Lads_mobile_sdk/w83;->e:Ljava/util/Map;

    iget-object v5, p0, Lads_mobile_sdk/w83;->f:Lads_mobile_sdk/j53;

    iget-object v6, p0, Lads_mobile_sdk/w83;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/w83;-><init>(Lads_mobile_sdk/b93;Ljava/util/Map$Entry;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Map;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/w83;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/w83;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/w83;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 128
    iget v1, p0, Lads_mobile_sdk/w83;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_31

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lads_mobile_sdk/w83;->b:Lads_mobile_sdk/b93;

    move p1, v2

    .line 130
    iget-object v2, p0, Lads_mobile_sdk/w83;->c:Ljava/util/Map$Entry;

    .line 131
    iget-object v3, p0, Lads_mobile_sdk/w83;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 132
    iget-object v4, p0, Lads_mobile_sdk/w83;->e:Ljava/util/Map;

    .line 133
    iget-object v5, p0, Lads_mobile_sdk/w83;->f:Lads_mobile_sdk/j53;

    .line 134
    iget-object v6, p0, Lads_mobile_sdk/w83;->g:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 135
    iput p1, p0, Lads_mobile_sdk/w83;->a:I

    move-object v7, p0

    .line 136
    invoke-virtual/range {v1 .. v7}, Lads_mobile_sdk/b93;->a(Ljava/util/Map$Entry;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Ljava/util/Map;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_31

    return-object v0

    .line 137
    :cond_31
    :goto_31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
