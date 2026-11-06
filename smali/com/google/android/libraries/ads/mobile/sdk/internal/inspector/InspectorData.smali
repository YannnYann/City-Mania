###### Class com.google.android.libraries.ads.mobile.sdk.internal.inspector.InspectorData (com.google.android.libraries.ads.mobile.sdk.internal.inspector.InspectorData)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adSlotData:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adSlots"
    .end annotation
.end field

.field public final adapterData:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "adapters"
    .end annotation
.end field

.field public final appInfo:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appInfo"
    .end annotation
.end field

.field public final applicationMuted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "applicationMuted"
    .end annotation
.end field

.field public final applicationVolume:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "applicationVolume"
    .end annotation
.end field

.field public final cldData:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cld"
    .end annotation
.end field

.field public final decagonVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "decagonVersion"
    .end annotation
.end field

.field public final gesture:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gesture"
    .end annotation
.end field

.field public final internalSdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "internalSdkVersion"
    .end annotation
.end field

.field public final isGamRegisteredTestDevice:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isGamRegisteredTestDevice"
    .end annotation
.end field

.field public final isSimulator:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSimulator"
    .end annotation
.end field

.field public final maxAdContentRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maxAdContentRating"
    .end annotation
.end field

.field public final networkExtras:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "networkExtras"
    .end annotation
.end field

.field public final openAction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openAction"
    .end annotation
.end field

.field public final osVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osVersion"
    .end annotation
.end field

.field public final platform:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field public final plugin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plugin"
    .end annotation
.end field

.field public final privacy:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "privacy"
    .end annotation
.end field

.field public final publisherFirstPartyIdEnabled:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "publisherFirstPartyIdEnabled"
    .end annotation
.end field

.field public final sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdkVersion"
    .end annotation
.end field

.field public final serverData:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serverData"
    .end annotation
.end field

.field public final uiStorage:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uiStorage"
    .end annotation
.end field

.field public final userStorage:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userDisk"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/gson/JsonArray;Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;FZLjava/lang/String;ILcom/google/gson/JsonObject;Ljava/lang/String;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p16

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    const-string v15, "appInfo"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "sdkVersion"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "gesture"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "adapterData"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "networkExtras"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "serverData"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "cldData"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "uiStorage"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "userStorage"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "openAction"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "adSlotData"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "maxAdContentRating"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "privacy"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "plugin"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->appInfo:Lcom/google/gson/JsonObject;

    .line 4
    iput-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->sdkVersion:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->gesture:Ljava/lang/String;

    move/from16 v1, p4

    .line 6
    iput-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isGamRegisteredTestDevice:Z

    move/from16 v1, p5

    .line 7
    iput-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isSimulator:Z

    .line 8
    iput-object v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adapterData:Lcom/google/gson/JsonArray;

    .line 9
    iput-object v5, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->networkExtras:Ljava/lang/String;

    .line 10
    iput-object v6, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->serverData:Lcom/google/gson/JsonObject;

    .line 11
    iput-object v7, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->cldData:Lcom/google/gson/JsonObject;

    .line 12
    iput-object v8, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->uiStorage:Lcom/google/gson/JsonObject;

    .line 13
    iput-object v9, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->userStorage:Lcom/google/gson/JsonObject;

    .line 14
    iput-object v10, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->openAction:Ljava/lang/String;

    .line 15
    iput-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adSlotData:Lcom/google/gson/JsonObject;

    move/from16 v1, p14

    .line 16
    iput v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationVolume:F

    move/from16 v1, p15

    .line 17
    iput-boolean v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationMuted:Z

    .line 18
    iput-object v12, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->maxAdContentRating:Ljava/lang/String;

    move/from16 v1, p17

    .line 19
    iput v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->publisherFirstPartyIdEnabled:I

    .line 20
    iput-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->privacy:Lcom/google/gson/JsonObject;

    .line 21
    iput-object v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->plugin:Ljava/lang/String;

    .line 23
    iput-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->internalSdkVersion:Ljava/lang/String;

    .line 24
    iput-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->decagonVersion:Ljava/lang/String;

    .line 25
    const-string v1, "ANDROID"

    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->platform:Ljava/lang/String;

    .line 26
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "RELEASE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->osVersion:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->appInfo:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->appInfo:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->sdkVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->sdkVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->gesture:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->gesture:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isGamRegisteredTestDevice:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isGamRegisteredTestDevice:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isSimulator:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isSimulator:Z

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adapterData:Lcom/google/gson/JsonArray;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adapterData:Lcom/google/gson/JsonArray;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->networkExtras:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->networkExtras:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v2

    :cond_51
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->serverData:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->serverData:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    :cond_5c
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->cldData:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->cldData:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    return v2

    :cond_67
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->uiStorage:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->uiStorage:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    return v2

    :cond_72
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->userStorage:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->userStorage:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    return v2

    :cond_7d
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->openAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->openAction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    return v2

    :cond_88
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adSlotData:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adSlotData:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    return v2

    :cond_93
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationVolume:F

    iget v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationVolume:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9e

    return v2

    :cond_9e
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationMuted:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationMuted:Z

    if-eq v1, v3, :cond_a5

    return v2

    :cond_a5
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->maxAdContentRating:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->maxAdContentRating:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v2

    :cond_b0
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->publisherFirstPartyIdEnabled:I

    iget v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->publisherFirstPartyIdEnabled:I

    if-eq v1, v3, :cond_b7

    return v2

    :cond_b7
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->privacy:Lcom/google/gson/JsonObject;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->privacy:Lcom/google/gson/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    return v2

    :cond_c2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->plugin:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->plugin:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cd

    return v2

    :cond_cd
    return v0
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->appInfo:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->sdkVersion:Ljava/lang/String;

    .line 1
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->gesture:Ljava/lang/String;

    .line 3
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isGamRegisteredTestDevice:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    move v2, v3

    :cond_1b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isSimulator:Z

    if-eqz v2, :cond_22

    move v2, v3

    :cond_22
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adapterData:Lcom/google/gson/JsonArray;

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->networkExtras:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->serverData:Lcom/google/gson/JsonObject;

    .line 7
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 8
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->cldData:Lcom/google/gson/JsonObject;

    .line 9
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 10
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->uiStorage:Lcom/google/gson/JsonObject;

    .line 11
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->userStorage:Lcom/google/gson/JsonObject;

    .line 13
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 14
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->openAction:Ljava/lang/String;

    .line 15
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 16
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adSlotData:Lcom/google/gson/JsonObject;

    .line 17
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 18
    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationVolume:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationMuted:Z

    if-eqz v0, :cond_63

    goto :goto_64

    :cond_63
    move v3, v0

    :goto_64
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->maxAdContentRating:Ljava/lang/String;

    .line 19
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 20
    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->publisherFirstPartyIdEnabled:I

    .line 21
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 22
    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->privacy:Lcom/google/gson/JsonObject;

    .line 23
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/z1;->a(Lcom/google/gson/JsonObject;II)I

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->plugin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 22

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->appInfo:Lcom/google/gson/JsonObject;

    iget-object v2, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->sdkVersion:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->gesture:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isGamRegisteredTestDevice:Z

    iget-boolean v5, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->isSimulator:Z

    iget-object v6, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adapterData:Lcom/google/gson/JsonArray;

    iget-object v7, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->networkExtras:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->serverData:Lcom/google/gson/JsonObject;

    iget-object v9, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->cldData:Lcom/google/gson/JsonObject;

    iget-object v10, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->uiStorage:Lcom/google/gson/JsonObject;

    iget-object v11, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->userStorage:Lcom/google/gson/JsonObject;

    iget-object v12, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->openAction:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->adSlotData:Lcom/google/gson/JsonObject;

    iget v14, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationVolume:F

    iget-boolean v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->applicationMuted:Z

    move/from16 v16, v15

    iget-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->maxAdContentRating:Ljava/lang/String;

    move-object/from16 v17, v15

    iget v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->publisherFirstPartyIdEnabled:I

    move/from16 v18, v15

    iget-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->privacy:Lcom/google/gson/JsonObject;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;->plugin:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v15

    const-string v15, "InspectorData(appInfo="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isGamRegisteredTestDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSimulator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adapterData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serverData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cldData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", openAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSlotData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", applicationMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxAdContentRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisherFirstPartyIdEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", privacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", plugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
