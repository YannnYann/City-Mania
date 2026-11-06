###### Class ads_mobile_sdk.xj2 (ads_mobile_sdk.xj2)
.class public final Lads_mobile_sdk/xj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/ec3;

.field public final b:Lads_mobile_sdk/im2;

.field public final c:Lads_mobile_sdk/al2;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final e:Lads_mobile_sdk/j53;

.field public final f:Ljava/util/Optional;

.field public final g:Lads_mobile_sdk/cl2;

.field public final h:Lads_mobile_sdk/ur3;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ec3;Lads_mobile_sdk/im2;Lads_mobile_sdk/al2;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/j53;Ljava/util/Optional;Lads_mobile_sdk/cl2;Lads_mobile_sdk/ur3;)V
    .registers 10

    .line 1
    const-string v0, "serverTransaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistentCacheFillManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberOfAdsRequested"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/xj2;->a:Lads_mobile_sdk/ec3;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/xj2;->b:Lads_mobile_sdk/im2;

    .line 34
    iput-object p3, p0, Lads_mobile_sdk/xj2;->c:Lads_mobile_sdk/al2;

    .line 35
    iput-object p4, p0, Lads_mobile_sdk/xj2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 36
    iput-object p5, p0, Lads_mobile_sdk/xj2;->e:Lads_mobile_sdk/j53;

    .line 37
    iput-object p6, p0, Lads_mobile_sdk/xj2;->f:Ljava/util/Optional;

    .line 38
    iput-object p7, p0, Lads_mobile_sdk/xj2;->g:Lads_mobile_sdk/cl2;

    .line 39
    iput-object p8, p0, Lads_mobile_sdk/xj2;->h:Lads_mobile_sdk/ur3;

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/xj2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/vj2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/vj2;

    iget v1, v0, Lads_mobile_sdk/vj2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vj2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/vj2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/vj2;-><init>(Lads_mobile_sdk/xj2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/vj2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget v2, v0, Lads_mobile_sdk/vj2;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object v0, v0, Lads_mobile_sdk/vj2;->a:Lads_mobile_sdk/xj2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_63

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lads_mobile_sdk/xj2;->g:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Lads_mobile_sdk/cl2;->a()Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lads_mobile_sdk/xj2;->a:Lads_mobile_sdk/ec3;

    iget-boolean p1, p1, Lads_mobile_sdk/ec3;->c:Z

    if-eqz p1, :cond_84

    iget-object p1, p0, Lads_mobile_sdk/xj2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_84

    .line 47
    iget-object p1, p0, Lads_mobile_sdk/xj2;->a:Lads_mobile_sdk/ec3;

    iget-object p1, p1, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    if-eqz p1, :cond_84

    .line 48
    iget-object v2, p0, Lads_mobile_sdk/xj2;->b:Lads_mobile_sdk/im2;

    iput-object p0, v0, Lads_mobile_sdk/vj2;->a:Lads_mobile_sdk/xj2;

    iput v3, v0, Lads_mobile_sdk/vj2;->d:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {v2, p1, v0}, Lads_mobile_sdk/im2;->a(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_62

    return-object v1

    :cond_62
    move-object v0, p0

    .line 50
    :goto_63
    check-cast p1, Lads_mobile_sdk/v01;

    .line 57
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_84

    .line 58
    iget-object v0, v0, Lads_mobile_sdk/xj2;->h:Lads_mobile_sdk/ur3;

    .line 59
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    invoke-virtual {v1}, Lads_mobile_sdk/i01;->b()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7d

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 60
    :cond_7d
    check-cast v0, Lads_mobile_sdk/as3;

    const-string p1, "Cache status reset failure on ad destroyed"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_84
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final r(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/wj2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/wj2;

    iget v1, v0, Lads_mobile_sdk/wj2;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/wj2;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/wj2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/wj2;-><init>(Lads_mobile_sdk/xj2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/wj2;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget v2, v0, Lads_mobile_sdk/wj2;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object v0, v0, Lads_mobile_sdk/wj2;->a:Lads_mobile_sdk/xj2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_64

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lads_mobile_sdk/xj2;->g:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Lads_mobile_sdk/cl2;->a()Z

    move-result p1

    if-eqz p1, :cond_ab

    iget-object p1, p0, Lads_mobile_sdk/xj2;->a:Lads_mobile_sdk/ec3;

    iget-boolean p1, p1, Lads_mobile_sdk/ec3;->c:Z

    if-eqz p1, :cond_ab

    .line 62
    iget-object p1, p0, Lads_mobile_sdk/xj2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 63
    iget-object p1, p0, Lads_mobile_sdk/xj2;->a:Lads_mobile_sdk/ec3;

    iget-object p1, p1, Lads_mobile_sdk/ec3;->d:Lads_mobile_sdk/om2;

    if-eqz p1, :cond_ab

    .line 64
    iget-object v2, p0, Lads_mobile_sdk/xj2;->b:Lads_mobile_sdk/im2;

    iput-object p0, v0, Lads_mobile_sdk/wj2;->a:Lads_mobile_sdk/xj2;

    iput v3, v0, Lads_mobile_sdk/wj2;->d:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-static {v2, p1, v0}, Lads_mobile_sdk/im2;->b(Lads_mobile_sdk/im2;Lads_mobile_sdk/om2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_63

    return-object v1

    :cond_63
    move-object v0, p0

    .line 66
    :goto_64
    check-cast p1, Lads_mobile_sdk/v01;

    .line 72
    instance-of v1, p1, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_86

    .line 73
    iget-object v0, v0, Lads_mobile_sdk/xj2;->h:Lads_mobile_sdk/ur3;

    .line 74
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/i01;

    invoke-virtual {v1}, Lads_mobile_sdk/i01;->b()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7e

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 75
    :cond_7e
    check-cast v0, Lads_mobile_sdk/as3;

    const-string p1, "Cache eviction failure on impression"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ab

    .line 76
    :cond_86
    iget-object p1, v0, Lads_mobile_sdk/xj2;->d:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 77
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_90

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    goto :goto_91

    :cond_90
    move-object p1, v2

    :goto_91
    if-nez p1, :cond_94

    goto :goto_ab

    .line 78
    :cond_94
    iget-object v1, v0, Lads_mobile_sdk/xj2;->c:Lads_mobile_sdk/al2;

    .line 80
    iget-object v4, v0, Lads_mobile_sdk/xj2;->e:Lads_mobile_sdk/j53;

    .line 81
    iget-object v0, v0, Lads_mobile_sdk/xj2;->f:Ljava/util/Optional;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/optionals/OptionalsKt;->getOrDefault(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 82
    invoke-virtual {v1, p1, v4, v0, v2}, Lads_mobile_sdk/al2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;)V

    .line 83
    :cond_ab
    :goto_ab
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
