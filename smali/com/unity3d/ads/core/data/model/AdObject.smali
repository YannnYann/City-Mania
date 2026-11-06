###### Class com.unity3d.ads.core.data.model.AdObject (com.unity3d.ads.core.data.model.AdObject)
.class public final Lcom/unity3d/ads/core/data/model/AdObject;
.super Ljava/lang/Object;
.source "AdObject.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;
    }
.end annotation


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

.field private final adScope:Lkotlinx/coroutines/CoroutineScope;

.field private final adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

.field private final isHeaderBidding:Z

.field private isOfferwallAd:Z

.field private loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

.field private final loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

.field private offerwallPlacementName:Ljava/lang/String;

.field private final opportunityId:Lcom/google/protobuf/ByteString;

.field private final placementId:Ljava/lang/String;

.field private playerServerId:Ljava/lang/String;

.field private showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

.field private state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            ">;"
        }
    .end annotation
.end field

.field private trackingToken:Lcom/google/protobuf/ByteString;

.field private ttl:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Z",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/time/Duration;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            ">;",
            "Lcom/unity3d/ads/LoadConfiguration;",
            "Lcom/unity3d/ads/ShowConfiguration;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;",
            ")V"
        }
    .end annotation

    move-object v0, p12

    move-object/from16 v1, p13

    const-string v2, "adScope"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "opportunityId"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "placementId"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "trackingToken"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "loadOptions"

    invoke-static {p9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adType"

    invoke-static {p11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ttl"

    invoke-static {p12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    .line 26
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    .line 27
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    .line 29
    iput-boolean p5, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    .line 30
    iput-object p6, p0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 32
    iput-object p8, p0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 34
    iput-boolean p10, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    .line 35
    iput-object p11, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    .line 36
    iput-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 37
    iput-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p1, p14

    .line 38
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    move-object/from16 p1, p15

    .line 39
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    move-object/from16 p1, p16

    .line 40
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    move-object/from16 p1, p17

    .line 41
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 40

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v7, v1

    goto :goto_b

    :cond_9
    move/from16 v7, p5

    :goto_b
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move-object v8, v2

    goto :goto_14

    :cond_12
    move-object/from16 v8, p6

    :goto_14
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1a

    move-object v9, v2

    goto :goto_1c

    :cond_1a
    move-object/from16 v9, p7

    :goto_1c
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_22

    move-object v10, v2

    goto :goto_24

    :cond_22
    move-object/from16 v10, p8

    :goto_24
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_2e

    .line 36
    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    move-object v14, v1

    goto :goto_30

    :cond_2e
    move-object/from16 v14, p12

    :goto_30
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3c

    .line 37
    sget-object v1, Lcom/unity3d/ads/core/data/model/AdObjectState;->INIT:Lcom/unity3d/ads/core/data/model/AdObjectState;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    move-object v15, v1

    goto :goto_3e

    :cond_3c
    move-object/from16 v15, p13

    :goto_3e
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_45

    move-object/from16 v16, v2

    goto :goto_47

    :cond_45
    move-object/from16 v16, p14

    :goto_47
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4e

    move-object/from16 v17, v2

    goto :goto_50

    :cond_4e
    move-object/from16 v17, p15

    :goto_50
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_59

    move-object/from16 v18, v2

    goto :goto_5b

    :cond_59
    move-object/from16 v18, p16

    :goto_5b
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_73

    move-object/from16 v19, v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v2, p0

    goto :goto_85

    :cond_73
    move-object/from16 v19, p17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 24
    :goto_85
    invoke-direct/range {v2 .. v19}, Lcom/unity3d/ads/core/data/model/AdObject;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/AdObject;Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 37

    .line 0
    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    goto :goto_d

    :cond_b
    move-object/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    move-object/from16 v4, p3

    :goto_1f
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_26

    iget-object v5, v0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    goto :goto_28

    :cond_26
    move-object/from16 v5, p4

    :goto_28
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2f

    iget-boolean v6, v0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    goto :goto_31

    :cond_2f
    move/from16 v6, p5

    :goto_31
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_38

    iget-object v7, v0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    move-object/from16 v7, p6

    :goto_3a
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    goto :goto_43

    :cond_41
    move-object/from16 v8, p7

    :goto_43
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_4a

    iget-object v9, v0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    goto :goto_4c

    :cond_4a
    move-object/from16 v9, p8

    :goto_4c
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_53

    iget-object v10, v0, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    goto :goto_55

    :cond_53
    move-object/from16 v10, p9

    :goto_55
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5c

    iget-boolean v11, v0, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    goto :goto_5e

    :cond_5c
    move/from16 v11, p10

    :goto_5e
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_65

    iget-object v12, v0, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    goto :goto_67

    :cond_65
    move-object/from16 v12, p11

    :goto_67
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6e

    iget-object v13, v0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    goto :goto_70

    :cond_6e
    move-object/from16 v13, p12

    :goto_70
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_77

    iget-object v14, v0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    goto :goto_79

    :cond_77
    move-object/from16 v14, p13

    :goto_79
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_80

    iget-object v15, v0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    goto :goto_82

    :cond_80
    move-object/from16 v15, p14

    :goto_82
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_8b

    iget-object v2, v0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    goto :goto_8d

    :cond_8b
    move-object/from16 v2, p15

    :goto_8d
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_97

    iget-object v1, v0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    goto :goto_99

    :cond_97
    move-object/from16 v1, p16

    :goto_99
    const/high16 v16, 0x10000

    and-int v16, p18, v16

    if-eqz v16, :cond_c8

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-object/from16 p17, p2

    move-object/from16 p18, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_ec

    :cond_c8
    move-object/from16 p18, p17

    move-object/from16 p17, v1

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    :goto_ec
    invoke-virtual/range {p1 .. p18}, Lcom/unity3d/ads/core/data/model/AdObject;->copy(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;)Lcom/unity3d/ads/core/data/model/AdObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final component10()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    return v0
.end method

.method public final component11()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    return-object v0
.end method

.method public final component12()Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/time/Duration;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final component13()Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final component14()Lcom/unity3d/ads/LoadConfiguration;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    return-object v0
.end method

.method public final component15()Lcom/unity3d/ads/ShowConfiguration;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    return-object v0
.end method

.method public final component16()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component17()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    return-object v0
.end method

.method public final component2()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final component5()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/unity3d/ads/adplayer/AdPlayer;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Lcom/unity3d/ads/UnityAdsLoadOptions;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    return-object v0
.end method

.method public final copy(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;)Lcom/unity3d/ads/core/data/model/AdObject;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/google/protobuf/ByteString;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/adplayer/AdPlayer;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/UnityAdsLoadOptions;",
            "Z",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/time/Duration;",
            ">;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            ">;",
            "Lcom/unity3d/ads/LoadConfiguration;",
            "Lcom/unity3d/ads/ShowConfiguration;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;",
            ")",
            "Lcom/unity3d/ads/core/data/model/AdObject;"
        }
    .end annotation

    .line 0
    const-string v0, "adScope"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "opportunityId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingToken"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadOptions"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttl"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/unity3d/ads/core/data/model/AdObject;

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/unity3d/ads/core/data/model/AdObject;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/google/protobuf/ByteString;Ljava/lang/String;Lcom/google/protobuf/ByteString;ZLjava/lang/String;Lcom/unity3d/ads/adplayer/AdPlayer;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;ZLgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/unity3d/ads/LoadConfiguration;Lcom/unity3d/ads/ShowConfiguration;Ljava/lang/ref/WeakReference;Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/AdObject;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObject;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    iget-boolean v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    if-eq v1, v3, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v2

    :cond_60
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    return v2

    :cond_6b
    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    iget-boolean v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    if-eq v1, v3, :cond_72

    return v2

    :cond_72
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    if-eq v1, v3, :cond_79

    return v2

    :cond_79
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    return v2

    :cond_84
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    return v2

    :cond_8f
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    return v2

    :cond_9a
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    return v2

    :cond_a5
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    return v2

    :cond_b0
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bb

    return v2

    :cond_bb
    return v0
.end method

.method public final getActivity()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    return-object v0
.end method

.method public final getAdScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final getAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    return-object v0
.end method

.method public final getLoadConfiguration()Lcom/unity3d/ads/LoadConfiguration;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    return-object v0
.end method

.method public final getLoadOptions()Lcom/unity3d/ads/UnityAdsLoadOptions;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    return-object v0
.end method

.method public final getOfferwallPlacementName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpportunityId()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayerServerId()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowConfiguration()Lcom/unity3d/ads/ShowConfiguration;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    return-object v0
.end method

.method public final getState()Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getTrackingToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getTtl()Lkotlinx/coroutines/flow/MutableStateFlow;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/time/Duration;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public final getWebViewLessLoadingRequiredData()Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_33

    move v1, v2

    goto :goto_37

    :cond_33
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_37
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    if-nez v1, :cond_40

    move v1, v2

    goto :goto_44

    :cond_40
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_44
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    if-nez v1, :cond_4d

    move v1, v2

    goto :goto_51

    :cond_4d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_51
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    if-nez v1, :cond_87

    move v1, v2

    goto :goto_8b

    :cond_87
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    if-nez v1, :cond_94

    move v1, v2

    goto :goto_98

    :cond_94
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_98
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a1

    move v1, v2

    goto :goto_a5

    :cond_a1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    if-nez v1, :cond_ad

    goto :goto_b1

    :cond_ad
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->hashCode()I

    move-result v2

    :goto_b1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isHeaderBidding()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    return v0
.end method

.method public final isOfferwallAd()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    return v0
.end method

.method public final setActivity(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setLoadConfiguration(Lcom/unity3d/ads/LoadConfiguration;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    return-void
.end method

.method public final setOfferwallAd(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    return-void
.end method

.method public final setOfferwallPlacementName(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    return-void
.end method

.method public final setPlayerServerId(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    return-void
.end method

.method public final setShowConfiguration(Lcom/unity3d/ads/ShowConfiguration;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    return-void
.end method

.method public final setState(Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/unity3d/ads/core/data/model/AdObjectState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public final setTrackingToken(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public final setTtl(Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lkotlin/time/Duration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public final setWebViewLessLoadingRequiredData(Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdObject(adScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", opportunityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->opportunityId:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->trackingToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOfferwallAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isOfferwallAd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offerwallPlacementName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->offerwallPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adPlayer:Lcom/unity3d/ads/adplayer/AdPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playerServerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->playerServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loadOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHeaderBidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->isHeaderBidding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->adType:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->ttl:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loadConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->loadConfiguration:Lcom/unity3d/ads/LoadConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->showConfiguration:Lcom/unity3d/ads/ShowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", webViewLessLoadingRequiredData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject;->webViewLessLoadingRequiredData:Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ads.core.data.model.AdObject.WebViewLessLoadingRequiredData (com.unity3d.ads.core.data.model.AdObject$WebViewLessLoadingRequiredData)
.class public final Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;
.super Ljava/lang/Object;
.source "AdObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/data/model/AdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebViewLessLoadingRequiredData"
.end annotation


# instance fields
.field private adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

.field private adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

.field private final webviewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;)V
    .registers 5

    const-string v0, "webviewUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    .line 46
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 43
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;-><init>(Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;ILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->copy(Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;)Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object v0
.end method

.method public final component3()Lcom/unity3d/ads/core/data/model/AdRefreshState;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;)Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;
    .registers 5

    .line 0
    const-string v0, "webviewUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;-><init>(Ljava/lang/String;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/core/data/model/AdRefreshState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    iget-object v3, p1, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    iget-object p1, p1, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    if-eq v1, p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getAdRefreshState()Lcom/unity3d/ads/core/data/model/AdRefreshState;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    return-object v0
.end method

.method public final getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-object v0
.end method

.method public final getWebviewUrl()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAdRefreshState(Lcom/unity3d/ads/core/data/model/AdRefreshState;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    return-void
.end method

.method public final setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewLessLoadingRequiredData(webviewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->webviewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adResponse:Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adRefreshState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/model/AdObject$WebViewLessLoadingRequiredData;->adRefreshState:Lcom/unity3d/ads/core/data/model/AdRefreshState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
