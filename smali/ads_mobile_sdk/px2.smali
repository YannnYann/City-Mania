###### Class ads_mobile_sdk.px2 (ads_mobile_sdk.px2)
.class public abstract Lads_mobile_sdk/px2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public final c:Lads_mobile_sdk/ks3;

.field public final d:Lads_mobile_sdk/ex0;

.field public final e:Lads_mobile_sdk/g83;

.field public final f:Ljava/lang/String;

.field public final g:Lads_mobile_sdk/j53;

.field public final h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final i:Z

.field public final j:Lads_mobile_sdk/ja1;

.field public final k:Lads_mobile_sdk/md1;

.field public final l:Lkotlinx/coroutines/flow/SharedFlow;

.field public final m:Lads_mobile_sdk/qn;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;ZLads_mobile_sdk/ja1;Lads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V
    .registers 15

    .line 1
    const-string v0, "loadScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorAdLifecycleMonitor"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancellationChannel"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lads_mobile_sdk/px2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 62
    iput-object p2, p0, Lads_mobile_sdk/px2;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 63
    iput-object p3, p0, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 64
    iput-object p4, p0, Lads_mobile_sdk/px2;->d:Lads_mobile_sdk/ex0;

    .line 65
    iput-object p5, p0, Lads_mobile_sdk/px2;->e:Lads_mobile_sdk/g83;

    .line 66
    iput-object p6, p0, Lads_mobile_sdk/px2;->f:Ljava/lang/String;

    .line 67
    iput-object p7, p0, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 68
    iput-object p8, p0, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 69
    iput-boolean p9, p0, Lads_mobile_sdk/px2;->i:Z

    .line 70
    iput-object p10, p0, Lads_mobile_sdk/px2;->j:Lads_mobile_sdk/ja1;

    .line 71
    iput-object p11, p0, Lads_mobile_sdk/px2;->k:Lads_mobile_sdk/md1;

    .line 72
    iput-object p12, p0, Lads_mobile_sdk/px2;->l:Lkotlinx/coroutines/flow/SharedFlow;

    .line 73
    iput-object p13, p0, Lads_mobile_sdk/px2;->m:Lads_mobile_sdk/qn;

    return-void
.end method

.method public static a(Lads_mobile_sdk/i01;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;
    .registers 4

    .line 685
    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 687
    invoke-virtual {p0}, Lads_mobile_sdk/i01;->a()Lads_mobile_sdk/kk1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v1

    .line 688
    invoke-static {p0}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object p0

    .line 689
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    return-object v0
.end method

.method public static final a(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    instance-of v0, p2, Lads_mobile_sdk/dx2;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/dx2;

    iget v1, v0, Lads_mobile_sdk/dx2;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_16

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dx2;->f:I

    goto :goto_1b

    :cond_16
    new-instance v0, Lads_mobile_sdk/dx2;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/dx2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    iget-object p2, v0, Lads_mobile_sdk/dx2;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 338
    iget v2, v0, Lads_mobile_sdk/dx2;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_43

    if-eq v2, v4, :cond_39

    if-ne v2, v3, :cond_31

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ae

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    iget-object p0, v0, Lads_mobile_sdk/dx2;->c:Lkotlin/coroutines/CoroutineContext;

    iget-object p1, v0, Lads_mobile_sdk/dx2;->b:Lads_mobile_sdk/ei1;

    iget-object v2, v0, Lads_mobile_sdk/dx2;->a:Lads_mobile_sdk/px2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_86

    :cond_43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 343
    iget-object p2, p0, Lads_mobile_sdk/px2;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    sget-object v2, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    instance-of v2, p2, Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz v2, :cond_59

    check-cast p2, Lkotlinx/coroutines/CoroutineDispatcher;

    goto :goto_5a

    :cond_59
    move-object p2, v5

    :goto_5a
    if-eqz p2, :cond_63

    .line 344
    const-string v2, "Publisher Callback"

    invoke-virtual {p2, v4, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    goto :goto_64

    :cond_63
    move-object p2, v5

    :goto_64
    if-eqz p2, :cond_67

    goto :goto_6d

    .line 346
    :cond_67
    iget-object p2, p0, Lads_mobile_sdk/px2;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {p2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    :goto_6d
    sget-object v2, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 348
    iput-object p0, v0, Lads_mobile_sdk/dx2;->a:Lads_mobile_sdk/px2;

    iput-object p1, v0, Lads_mobile_sdk/dx2;->b:Lads_mobile_sdk/ei1;

    iput-object p2, v0, Lads_mobile_sdk/dx2;->c:Lkotlin/coroutines/CoroutineContext;

    iput v4, v0, Lads_mobile_sdk/dx2;->f:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/px2;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_82

    goto :goto_ad

    :cond_82
    move-object v6, v2

    move-object v2, p0

    move-object p0, p2

    move-object p2, v6

    .line 349
    :goto_86
    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    .line 360
    new-instance v4, Lads_mobile_sdk/gx2;

    invoke-direct {v4, p0, p1, v5}, Lads_mobile_sdk/gx2;-><init>(Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v4}, Lkotlinx/coroutines/flow/FlowKt;->onCompletion(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 365
    new-instance v4, Lads_mobile_sdk/jx2;

    invoke-direct {v4, v2, p0, p1, v5}, Lads_mobile_sdk/jx2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v4}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 371
    new-instance v2, Lads_mobile_sdk/ox2;

    invoke-direct {v2, p0, p1}, Lads_mobile_sdk/ox2;-><init>(Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;)V

    iput-object v5, v0, Lads_mobile_sdk/dx2;->a:Lads_mobile_sdk/px2;

    iput-object v5, v0, Lads_mobile_sdk/dx2;->b:Lads_mobile_sdk/ei1;

    iput-object v5, v0, Lads_mobile_sdk/dx2;->c:Lkotlin/coroutines/CoroutineContext;

    iput v3, v0, Lads_mobile_sdk/dx2;->f:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_ae

    :goto_ad
    return-object v1

    .line 385
    :cond_ae
    :goto_ae
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static a(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1357
    instance-of v0, p1, Lads_mobile_sdk/tw2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/tw2;

    iget v1, v0, Lads_mobile_sdk/tw2;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tw2;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/tw2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/tw2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/tw2;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1488
    iget v2, v0, Lads_mobile_sdk/tw2;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_50

    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v4, v0, Lads_mobile_sdk/tw2;->c:I

    .line 1489
    iget-object p1, p0, Lads_mobile_sdk/px2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 1490
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v2, Lads_mobile_sdk/xw2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lads_mobile_sdk/xw2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    goto :goto_5a

    .line 1491
    :cond_50
    :goto_50
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    iput v3, v0, Lads_mobile_sdk/tw2;->c:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5b

    :goto_5a
    return-object v1

    :cond_5b
    return-object p0
.end method

.method public static final synthetic a(Lads_mobile_sdk/px2;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lads_mobile_sdk/px2;->i:Z

    return p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/bn1;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Lads_mobile_sdk/bn1;
    .registers 4

    .line 395
    const-string v0, "componentBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    iget-object v0, v0, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    invoke-interface {p1, v0}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/n03;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 676
    iget-object v0, p0, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    iget-object v0, v0, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    invoke-interface {p1, v0}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 677
    iget-object v0, p0, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    invoke-interface {p1, v0}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 678
    invoke-interface {p1, p2}, Lads_mobile_sdk/bn1;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 679
    iget-boolean p2, p0, Lads_mobile_sdk/px2;->i:Z

    invoke-interface {p1, p2}, Lads_mobile_sdk/bn1;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 680
    iget-object p2, p0, Lads_mobile_sdk/px2;->k:Lads_mobile_sdk/md1;

    invoke-interface {p1, p2}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/md1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 681
    new-instance p2, Lads_mobile_sdk/m13;

    invoke-direct {p2}, Lads_mobile_sdk/m13;-><init>()V

    invoke-interface {p1, p2}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/m13;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    const/4 p2, 0x0

    .line 682
    invoke-interface {p1, p2}, Lads_mobile_sdk/bn1;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 683
    invoke-interface {p1, p2}, Lads_mobile_sdk/bn1;->c(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    .line 684
    new-instance p2, Lads_mobile_sdk/pb;

    iget-object v0, p0, Lads_mobile_sdk/px2;->d:Lads_mobile_sdk/ex0;

    invoke-direct {p2, v0}, Lads_mobile_sdk/pb;-><init>(Lads_mobile_sdk/ex0;)V

    invoke-interface {p1, p2}, Lads_mobile_sdk/bn1;->a(Lads_mobile_sdk/pb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bn1;

    return-object p1
.end method

.method public final a()Lads_mobile_sdk/ks3;
    .registers 2

    .line 752
    iget-object v0, p0, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/mj1;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Ljava/lang/String;Lads_mobile_sdk/tf3;)Lads_mobile_sdk/mj1;
    .registers 6

    .line 386
    const-string v0, "componentBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponseBlob"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signalGenerationData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-interface {p1, p3}, Lads_mobile_sdk/mj1;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    .line 388
    invoke-interface {p1, p4}, Lads_mobile_sdk/mj1;->a(Lads_mobile_sdk/tf3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    .line 389
    iget-object p3, p0, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    iget-object p3, p3, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    invoke-interface {p1, p3}, Lads_mobile_sdk/mj1;->a(Lads_mobile_sdk/n03;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    .line 390
    iget-object p3, p0, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    iget-object p3, p3, Lads_mobile_sdk/ks3;->b:Lads_mobile_sdk/tn1;

    invoke-interface {p1, p3}, Lads_mobile_sdk/mj1;->a(Lads_mobile_sdk/tn1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    .line 391
    iget-object p3, p0, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    invoke-interface {p1, p3}, Lads_mobile_sdk/mj1;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    .line 392
    invoke-interface {p1, p2}, Lads_mobile_sdk/mj1;->a(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    .line 393
    iget-boolean p2, p0, Lads_mobile_sdk/px2;->i:Z

    invoke-interface {p1, p2}, Lads_mobile_sdk/mj1;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    .line 394
    iget-object p2, p0, Lads_mobile_sdk/px2;->k:Lads_mobile_sdk/md1;

    invoke-interface {p1, p2}, Lads_mobile_sdk/mj1;->a(Lads_mobile_sdk/md1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mj1;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/oh2;)Ljava/lang/Object;
    .registers 2

    .line 754
    invoke-static {p0, p1}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lads_mobile_sdk/zh1;Lads_mobile_sdk/yw2;)Ljava/lang/Object;
    .registers 3

    .line 1950
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    .line 1492
    instance-of v0, p1, Lads_mobile_sdk/bx2;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/bx2;

    iget v1, v0, Lads_mobile_sdk/bx2;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/bx2;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/bx2;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/bx2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lads_mobile_sdk/bx2;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1627
    iget v2, v0, Lads_mobile_sdk/bx2;->e:I

    const-string v3, "error"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_47

    if-eq v2, v5, :cond_3d

    if-ne v2, v4, :cond_35

    iget-object v1, v0, Lads_mobile_sdk/bx2;->b:Ljava/lang/Throwable;

    iget-object v0, v0, Lads_mobile_sdk/bx2;->a:Lads_mobile_sdk/px2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_145

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    iget-object v2, v0, Lads_mobile_sdk/bx2;->a:Lads_mobile_sdk/px2;

    :try_start_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_44

    goto/16 :goto_11a

    :catchall_44
    move-exception p1

    goto/16 :goto_12d

    .line 1628
    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1631
    iget-object p1, p0, Lads_mobile_sdk/px2;->j:Lads_mobile_sdk/ja1;

    invoke-virtual {p1}, Lads_mobile_sdk/ja1;->a()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object p1

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5a

    :cond_58
    const-string p1, ""

    .line 1632
    :cond_5a
    iget-object v2, p0, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_95

    sget-object v2, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    .line 1633
    const-string v2, "applicationId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1634
    sget-object v2, Lads_mobile_sdk/o21;->h:Lkotlin/text/Regex;

    .line 1635
    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_95

    .line 1636
    const-string v0, "webview_api_for_ads_application_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 1637
    const-string p1, "InitializationConfig.WEBVIEW_APIS_FOR_ADS_APPLICATION_ID was provided as your application ID. This ID should be used if WebView APIs are the only integration point with the SDK. To make standard ad requests, you must provide your application ID of the form ca-app-pub-################~##########."

    goto :goto_7a

    .line 1639
    :cond_78
    const-string p1, "An invalid application ID was provided during initialization, it should be of the form ca-app-pub-################~##########."

    .line 1642
    :goto_7a
    new-instance v0, Lads_mobile_sdk/m01;

    .line 1643
    sget-object v1, Lads_mobile_sdk/kk1;->a:Lads_mobile_sdk/kk1;

    .line 1644
    invoke-direct {v0, p1, v1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    .line 1645
    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 1646
    new-instance v0, Lads_mobile_sdk/qx2;

    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 1647
    invoke-direct {v1, v2, p1, v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 1648
    invoke-direct {v0, v1}, Lads_mobile_sdk/qx2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    .line 1649
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1

    .line 1654
    :cond_95
    iget-object p1, p0, Lads_mobile_sdk/px2;->d:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1656
    const-string v2, "gads:pre_request_webview_capping_check:enabled"

    const-string v8, "key"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1672
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v2, v9, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10e

    .line 1673
    iget-object p1, p0, Lads_mobile_sdk/px2;->m:Lads_mobile_sdk/qn;

    .line 1674
    iget-object p1, p1, Lads_mobile_sdk/qn;->a:Lads_mobile_sdk/qs1;

    .line 1675
    check-cast p1, Lads_mobile_sdk/rs1;

    .line 1676
    iget-object v2, p1, Lads_mobile_sdk/rs1;->a:Lads_mobile_sdk/ex0;

    .line 1677
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1679
    const-string v11, "gads:webview_capping:enabled"

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v2, v11, v9, v10}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_ce

    goto :goto_10e

    .line 1696
    :cond_ce
    iget-object v2, p1, Lads_mobile_sdk/rs1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1697
    iget-object p1, p1, Lads_mobile_sdk/rs1;->a:Lads_mobile_sdk/ex0;

    const/4 v9, 0x5

    .line 1699
    const-string v10, "gads:max_live_webviews"

    invoke-static {p1, v10, v8, v9}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    .line 1700
    sget-object v9, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {p1, v10, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lt v2, p1, :cond_10e

    .line 1701
    sget-object p1, Lads_mobile_sdk/t01;->c:Lads_mobile_sdk/t01;

    .line 1702
    invoke-static {p1, v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    .line 1703
    new-instance v0, Lads_mobile_sdk/qx2;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1704
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 1705
    invoke-virtual {p1}, Lads_mobile_sdk/i01;->a()Lads_mobile_sdk/kk1;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v2

    .line 1706
    invoke-static {p1}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object p1

    .line 1707
    invoke-direct {v1, v2, p1, v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 1708
    invoke-direct {v0, v1}, Lads_mobile_sdk/qx2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    .line 1709
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1

    .line 1715
    :cond_10e
    :goto_10e
    :try_start_10e
    iput-object p0, v0, Lads_mobile_sdk/bx2;->a:Lads_mobile_sdk/px2;

    iput v5, v0, Lads_mobile_sdk/bx2;->e:I

    invoke-virtual {p0, v0}, Lads_mobile_sdk/px2;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_12b

    if-ne p1, v1, :cond_119

    goto :goto_142

    :cond_119
    move-object v2, p0

    .line 1716
    :goto_11a
    :try_start_11a
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 1918
    new-instance v5, Lads_mobile_sdk/ax2;

    invoke-direct {v5, p1, v2}, Lads_mobile_sdk/ax2;-><init>(Lkotlinx/coroutines/flow/Flow;Lads_mobile_sdk/px2;)V

    .line 1919
    new-instance p1, Lads_mobile_sdk/cx2;

    invoke-direct {p1, v2, v7}, Lads_mobile_sdk/cx2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, p1}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1
    :try_end_12a
    .catchall {:try_start_11a .. :try_end_12a} :catchall_44

    return-object p1

    :catchall_12b
    move-exception p1

    move-object v2, p0

    .line 1926
    :goto_12d
    const-string v5, "Ad failed to load"

    invoke-static {v5, p1}, Lads_mobile_sdk/f01;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1929
    instance-of v5, p1, Lads_mobile_sdk/dz2;

    if-nez v5, :cond_143

    .line 1930
    iput-object v2, v0, Lads_mobile_sdk/bx2;->a:Lads_mobile_sdk/px2;

    iput-object p1, v0, Lads_mobile_sdk/bx2;->b:Ljava/lang/Throwable;

    iput v4, v0, Lads_mobile_sdk/bx2;->e:I

    invoke-virtual {v2, v0}, Lads_mobile_sdk/px2;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_143

    :goto_142
    return-object v1

    :cond_143
    move-object v1, p1

    move-object v0, v2

    .line 1931
    :goto_145
    const-string p1, "exception"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1932
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object p1

    .line 1933
    iget-object p1, p1, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez p1, :cond_153

    goto :goto_15e

    .line 1934
    :cond_153
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v2

    iput-boolean v6, v2, Lads_mobile_sdk/uj2;->m:Z

    if-eqz v1, :cond_15e

    .line 1935
    invoke-virtual {p1, v1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1936
    :cond_15e
    :goto_15e
    instance-of p1, v1, Lads_mobile_sdk/dz2;

    if-eqz p1, :cond_16b

    .line 1937
    new-instance p1, Lads_mobile_sdk/j01;

    sget-object v2, Lads_mobile_sdk/kk1;->k:Lads_mobile_sdk/kk1;

    const/4 v4, 0x4

    invoke-direct {p1, v1, v2, v7, v4}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    goto :goto_171

    .line 1939
    :cond_16b
    new-instance p1, Lads_mobile_sdk/j01;

    const/4 v2, 0x6

    invoke-direct {p1, v1, v7, v7, v2}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V

    .line 1941
    :goto_171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1942
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 1943
    invoke-virtual {p1}, Lads_mobile_sdk/j01;->a()Lads_mobile_sdk/kk1;

    move-result-object v1

    invoke-virtual {v1}, Lads_mobile_sdk/kk1;->d()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v1

    .line 1944
    invoke-static {p1}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object p1

    .line 1945
    invoke-direct {v0, v1, p1, v7}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 1946
    new-instance p1, Lads_mobile_sdk/qx2;

    invoke-direct {p1, v0}, Lads_mobile_sdk/qx2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ei1;)V
    .registers 16

    .line 755
    const-string v0, "internalAdLoadCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lads_mobile_sdk/px2;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/ww2;

    const/4 v7, 0x0

    invoke-direct {v0, p0, p1, v7}, Lads_mobile_sdk/ww2;-><init>(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    .line 836
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 837
    const-string p1, "<this>"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "context"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "block"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1095
    new-instance v4, Lads_mobile_sdk/ws3;

    invoke-direct {v4, v0, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    move-object v1, v8

    .line 1096
    iget-object v8, p0, Lads_mobile_sdk/px2;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/vw2;

    invoke-direct {v3, p0, v0, v7}, Lads_mobile_sdk/vw2;-><init>(Lads_mobile_sdk/px2;Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    .line 1097
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1355
    new-instance v11, Lads_mobile_sdk/ws3;

    invoke-direct {v11, v3, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v9, v2

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 1356
    new-instance v1, Lads_mobile_sdk/sw2;

    invoke-direct {v1, p1}, Lads_mobile_sdk/sw2;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public abstract b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
