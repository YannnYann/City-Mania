###### Class com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem (com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem)
.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lads_mobile_sdk/k63;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lads_mobile_sdk/k63;->a:Lads_mobile_sdk/k63;

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    return-void
.end method


# virtual methods
.method public abstract getAmount()I
.end method

.method public abstract getType()Ljava/lang/String;
.end method
