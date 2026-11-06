###### Class io.bidmachine.models.AdObjectParams (io.bidmachine.models.AdObjectParams)
.class public abstract Lio/bidmachine/models/AdObjectParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final trackUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final unifiedMediationParams:Lio/bidmachine/unified/AdObjectMediationParams;

.field public final viewabilityTrackerParams:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;)V
    .registers 5

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    .line 6
    new-instance v0, Lio/bidmachine/unified/AdObjectMediationParams;

    invoke-direct {v0}, Lio/bidmachine/unified/AdObjectMediationParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/models/AdObjectParams;->unifiedMediationParams:Lio/bidmachine/unified/AdObjectMediationParams;

    .line 20
    invoke-static {p1}, Lio/bidmachine/utils/ProtoUtilsKt;->findFirstAdExtension(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 22
    invoke-virtual {p0, v0}, Lio/bidmachine/models/AdObjectParams;->prepareExtensions(Lio/bidmachine/protobuf/AdExtension;)V

    .line 23
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension;->getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;

    move-result-object v0

    const-string v1, "adExtension.viewabilityConfiguration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/utils/ProtoUtilsKt;->toViewabilityTrackerParams(Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;)Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityTrackerParams:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    goto :goto_34

    :cond_31
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lio/bidmachine/models/AdObjectParams;->viewabilityTrackerParams:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    .line 27
    :goto_34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ad.ext.fieldsMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/models/AdObjectParams;->prepareExtensions(Ljava/util/Map;)V

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "creativeId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/models/AdObjectParamsKt;->classifyCreativeProfile(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object p1

    const-string v1, "creativeProfileInfo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addEvent(Lio/bidmachine/TrackEventType;Ljava/lang/String;)V
    .registers 4

    const-string v0, "trackEventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lio/bidmachine/utils/ProtoUtils;->addEvent(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    return-void
.end method

.method public final getData()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/models/AdObjectParams;->unifiedMediationParams:Lio/bidmachine/unified/AdObjectMediationParams;

    invoke-virtual {v0}, Lio/bidmachine/utils/data/MapDataRetriever;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "unifiedMediationParams.params"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getHeight()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {v0, v1}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/models/AdObjectParams;->unifiedMediationParams:Lio/bidmachine/unified/AdObjectMediationParams;

    return-object v0
.end method

.method public final getTrackUrls()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    return-object v0
.end method

.method public final getWidth()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {v0, v1}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final prepareEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/models/AdObjectParams;->trackUrls:Ljava/util/Map;

    invoke-static {v0, p1}, Lio/bidmachine/utils/ProtoUtils;->prepareEvents(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public final prepareExtensions(Lio/bidmachine/protobuf/AdExtension;)V
    .registers 5

    const-string v0, "adExtension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getEventList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/models/AdObjectParams;->prepareEvents(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "useNativeClose"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCreativeLoadingMethod()Lio/bidmachine/protobuf/CreativeLoadingMethod;

    move-result-object v1

    const-string v2, "adExtension.creativeLoadingMethod"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cacheControl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getPlaceholderTimeout()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "placeholderTimeoutSec"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "skipOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "companionSkipOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "r1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "r2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adExtension.storeUrl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "store_url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "progress_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 15
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    if-eq v1, v2, :cond_98

    .line 16
    const-string v2, "close_button_control_asset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_98
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 19
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    if-eq v1, v2, :cond_a9

    .line 20
    const-string v2, "countdown_control_asset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_a9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v1

    if-eqz v1, :cond_ba

    .line 23
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v2

    if-eq v1, v2, :cond_ba

    .line 24
    const-string v2, "progress_control_asset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_ba
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension;->getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object p1

    if-eqz p1, :cond_cb

    .line 27
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering;

    move-result-object v1

    if-eq p1, v1, :cond_cb

    .line 28
    const-string v1, "rendering_configuration"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cb
    return-void
.end method

.method public final prepareExtensions(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/Value;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extensionMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    .line 30
    const-string v1, "omsdk_enabled"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Value;

    if-eqz v2, :cond_1e

    .line 31
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_1e
    const-string v1, "engaged_click_interaction_window_ms"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Value;

    if-eqz p1, :cond_33

    .line 34
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return-void
.end method

.method public final setHeight(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "height"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setWidth(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/models/AdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "width"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
