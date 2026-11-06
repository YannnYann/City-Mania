###### Class ads_mobile_sdk.nm1 (ads_mobile_sdk.nm1)
.class public final Lads_mobile_sdk/nm1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/mm1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/mm1;

    iget v1, v0, Lads_mobile_sdk/mm1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/mm1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/mm1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/mm1;-><init>(Lads_mobile_sdk/nm1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/mm1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lads_mobile_sdk/mm1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/mm1;->a:Lads_mobile_sdk/ck1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_82

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    sget-object p2, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/vf0;

    .line 66
    iget-object p2, p2, Lads_mobile_sdk/vf0;->w:Lads_mobile_sdk/dw2;

    .line 67
    invoke-interface {p2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 68
    iput-object p1, v0, Lads_mobile_sdk/mm1;->a:Lads_mobile_sdk/ck1;

    iput v3, v0, Lads_mobile_sdk/mm1;->d:I

    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 70
    new-instance p2, Lads_mobile_sdk/o53;

    invoke-virtual {p1}, Lads_mobile_sdk/ck1;->m()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    .line 71
    iget-object v2, p1, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 72
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v2, v0}, Lads_mobile_sdk/o53;-><init>(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 73
    iget-object v0, p1, Lads_mobile_sdk/ck1;->n:Landroid/view/View;

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7f

    .line 75
    :cond_75
    new-instance v2, Lads_mobile_sdk/di1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lads_mobile_sdk/di1;-><init>(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    :goto_7f
    if-ne p2, v1, :cond_82

    return-object v1

    .line 76
    :cond_82
    :goto_82
    check-cast p2, Lads_mobile_sdk/o53;

    .line 78
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;

    new-instance v1, Lads_mobile_sdk/wo;

    invoke-direct {v1, p1, p2}, Lads_mobile_sdk/wo;-><init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/o53;)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V

    return-object v0
.end method
