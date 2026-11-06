###### Class ads_mobile_sdk.yo3 (ads_mobile_sdk.yo3)
.class public final Lads_mobile_sdk/yo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/rewarded/RewardItem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/yo3;->a:Lcom/google/android/gms/ads/rewarded/RewardItem;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .registers 2

    .line 103
    iget-object v0, p0, Lads_mobile_sdk/yo3;->a:Lcom/google/android/gms/ads/rewarded/RewardItem;

    invoke-interface {v0}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result v0

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lads_mobile_sdk/yo3;->a:Lcom/google/android/gms/ads/rewarded/RewardItem;

    invoke-interface {v0}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
