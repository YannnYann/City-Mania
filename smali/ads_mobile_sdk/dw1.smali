###### Class ads_mobile_sdk.dw1 (ads_mobile_sdk.dw1)
.class public final Lads_mobile_sdk/dw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/hm0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hm0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    .line 232
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->b()V

    return-void
.end method

.method public final onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 1
    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/hm0;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onAdFailedToShow(Ljava/lang/String;)V
    .registers 5

    .line 217
    const-string v0, "errorDescription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const/4 v1, 0x0

    const-string v2, "undefined"

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string p1, "adError"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iget-object p1, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/hm0;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    .line 228
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->c()V

    return-void
.end method

.method public final onUserEarnedReward()V
    .registers 4

    .line 197
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    .line 198
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 199
    check-cast v0, Lads_mobile_sdk/gp3;

    .line 200
    new-instance v1, Lads_mobile_sdk/ap3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lads_mobile_sdk/ap3;-><init>(Lads_mobile_sdk/gp3;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 5

    .line 201
    const-string v0, "rewardItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v1}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    move-result-object v1

    if-eqz v1, :cond_22

    check-cast v1, Lads_mobile_sdk/gp3;

    .line 465
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    new-instance v0, Lads_mobile_sdk/zo3;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lads_mobile_sdk/zo3;-><init>(Lads_mobile_sdk/gp3;Lcom/google/android/gms/ads/rewarded/RewardItem;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v2, v0, p1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method public final onVideoComplete()V
    .registers 2

    .line 205
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->f()V

    return-void
.end method

.method public final onVideoStart()V
    .registers 2

    .line 201
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    .line 202
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    return-void
.end method

.method public final reportAdClicked()V
    .registers 2

    .line 220
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->d()V

    return-void
.end method

.method public final reportAdImpression()V
    .registers 2

    .line 224
    iget-object v0, p0, Lads_mobile_sdk/dw1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->e()V

    return-void
.end method
