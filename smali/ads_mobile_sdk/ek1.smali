###### Class ads_mobile_sdk.ek1 (ads_mobile_sdk.ek1)
.class public final Lads_mobile_sdk/ek1;
.super Lads_mobile_sdk/ei1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

.field public final b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/jvm/functions/Function2;)V
    .registers 4

    .line 1
    const-string v0, "loadCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lads_mobile_sdk/ei1;-><init>()V

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/ek1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    .line 20
    iput-object p2, p0, Lads_mobile_sdk/ek1;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 41
    instance-of v0, p2, Lads_mobile_sdk/dk1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/dk1;

    iget v1, v0, Lads_mobile_sdk/dk1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dk1;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lads_mobile_sdk/dk1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/dk1;-><init>(Lads_mobile_sdk/ek1;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lads_mobile_sdk/dk1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget v2, v0, Lads_mobile_sdk/dk1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p1, v0, Lads_mobile_sdk/dk1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_48

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    iget-object p2, p0, Lads_mobile_sdk/ek1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    iget-object v2, p0, Lads_mobile_sdk/ek1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, v0, Lads_mobile_sdk/dk1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    iput v3, v0, Lads_mobile_sdk/dk1;->d:I

    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_45

    return-object v1

    :cond_45
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 62
    :goto_48
    invoke-interface {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    .line 63
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final bridge synthetic a(Lads_mobile_sdk/zh1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 40
    check-cast p1, Lads_mobile_sdk/ck1;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ek1;->a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 1

    .line 0
    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .registers 3

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/ek1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-void
.end method
