###### Class ads_mobile_sdk.gs (ads_mobile_sdk.gs)
.class public abstract Lads_mobile_sdk/gs;
.super Lads_mobile_sdk/eq;
.source "SourceFile"


# instance fields
.field public final b:Lads_mobile_sdk/un1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/un1;)V
    .registers 3

    .line 1
    const-string v0, "internalRewardedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 22
    iput-object p1, p0, Lads_mobile_sdk/gs;->b:Lads_mobile_sdk/un1;

    return-void
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 5

    .line 30
    iget-object v0, p0, Lads_mobile_sdk/gs;->b:Lads_mobile_sdk/un1;

    .line 31
    iget-object v0, v0, Lads_mobile_sdk/un1;->r:Lads_mobile_sdk/t4;

    .line 32
    iget-object v1, v0, Lads_mobile_sdk/t4;->a:Lads_mobile_sdk/tn3;

    .line 33
    sget-object v2, Lads_mobile_sdk/t4;->b:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_18

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_18
    return-object v0
.end method

.method public final getRewardItem()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;
    .registers 2

    .line 32
    iget-object v0, p0, Lads_mobile_sdk/gs;->b:Lads_mobile_sdk/un1;

    .line 33
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    .line 34
    iget-object v0, v0, Lads_mobile_sdk/i2;->l0:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lads_mobile_sdk/k63;->b:Lads_mobile_sdk/j63;

    :cond_11
    return-object v0
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;)V
    .registers 5

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUserEarnedRewardListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lads_mobile_sdk/gs;->b:Lads_mobile_sdk/un1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onUserEarnedRewardListener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v1

    .line 87
    monitor-enter v1

    .line 88
    :try_start_1e
    iput-object p2, v1, Lads_mobile_sdk/fm0;->o:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_27

    monitor-exit v1

    .line 89
    invoke-virtual {v0, p1}, Lads_mobile_sdk/as;->a(Landroid/content/Context;)V

    return-void

    :catchall_27
    move-exception p1

    .line 90
    monitor-exit v1

    throw p1
.end method
