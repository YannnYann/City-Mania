###### Class com.google.android.libraries.ads.mobile.sdk.internal.common.ParentAdConfig (com.google.android.libraries.ads.mobile.sdk.internal.common.ParentAdConfig)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adSourceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_source_name"
    .end annotation
.end field

.field public final clickUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "click_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final fillUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fill_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final impressionUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imp_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final innerAdUnitId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "initial_ad_unit_id"
    .end annotation
.end field

.field public final isAnalyticsLoggingEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_analytics_logging_enabled"
    .end annotation
.end field

.field public final isClosableAreaDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_closable_area_disabled"
    .end annotation
.end field

.field public final manualTrackingUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manual_tracking_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final recursiveRequestParameters:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recursive_request_parameters"
    .end annotation
.end field

.field public final recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recursive_signal_collection"
    .end annotation
.end field

.field public rewardsBundles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rewards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final videoCompleteUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_complete_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final videoRewardsUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_reward_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final videoStartUrls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_start_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/google/gson/JsonObject;ZLjava/util/List;Lcom/google/gson/JsonArray;)V
    .registers 16

    const-string v0, "innerAdUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSourceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickUrls"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionUrls"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualTrackingUrls"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fillUrls"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoStartUrls"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoRewardsUrls"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCompleteUrls"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recursiveRequestParameters"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    .line 9
    iput-object p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    .line 10
    iput-object p8, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    .line 11
    iput-object p9, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    .line 12
    iput-boolean p10, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    .line 13
    iput-object p11, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    .line 16
    iput-boolean p12, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    .line 17
    iput-object p13, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    .line 18
    iput-object p14, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    if-eq v1, v3, :cond_76

    return v2

    :cond_76
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    return v2

    :cond_81
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    if-eq v1, v3, :cond_88

    return v2

    :cond_88
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    return v2

    :cond_93
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9e

    return v2

    :cond_9e
    return v0
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    .line 1
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    .line 3
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    .line 5
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    .line 7
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    .line 9
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    .line 11
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    .line 13
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 14
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    .line 15
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 16
    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3f

    move v2, v3

    :cond_3f
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    .line 17
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 18
    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    if-eqz v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v2

    :goto_4d
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_56

    move v2, v3

    goto :goto_5a

    :cond_56
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    if-nez v1, :cond_61

    goto :goto_65

    :cond_61
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->hashCode()I

    move-result v3

    :goto_65
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 17

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->innerAdUnitId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->adSourceName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->clickUrls:Ljava/util/List;

    iget-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->impressionUrls:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->manualTrackingUrls:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->fillUrls:Ljava/util/List;

    iget-object v7, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoStartUrls:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoRewardsUrls:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->videoCompleteUrls:Ljava/util/List;

    iget-boolean v10, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isClosableAreaDisabled:Z

    iget-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveRequestParameters:Lcom/google/gson/JsonObject;

    iget-boolean v12, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->isAnalyticsLoggingEnabled:Z

    iget-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->rewardsBundles:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;->recursiveSignalCollectionConfig:Lcom/google/gson/JsonArray;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ParentAdConfig(innerAdUnitId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adSourceName="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clickUrls="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", impressionUrls="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", manualTrackingUrls="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fillUrls="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoStartUrls="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoRewardsUrls="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoCompleteUrls="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isClosableAreaDisabled="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", recursiveRequestParameters="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isAnalyticsLoggingEnabled="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rewardsBundles="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", recursiveSignalCollectionConfig="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
