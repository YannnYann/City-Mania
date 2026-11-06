###### Class io.bidmachine.ads.networks.mraid.MraidParams (io.bidmachine.ads.networks.mraid.MraidParams)
.class public final Lio/bidmachine/ads/networks/mraid/MraidParams;
.super Lio/bidmachine/unified/UnifiedParams;
.source "SourceFile"


# instance fields
.field public final cacheControl:Lio/bidmachine/iab/CacheControl;

.field public final closeableViewStyle:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final countDownStyle:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final creativeAdm:Ljava/lang/String;

.field public final creativeProfileInfo:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

.field public final engagedClickInteractionWindowMs:Ljava/lang/Long;

.field public final height:I

.field public final omsdkEnabled:Z

.field public final placeholderTimeoutSec:F

.field public final progressDuration:I

.field public final progressStyle:Lio/bidmachine/iab/utils/IabElementStyle;

.field public final r1:Z

.field public final r2:Z

.field public final skipOffset:I

.field public final storeUrl:Ljava/lang/String;

.field public final useNativeClose:Z

.field public final width:I


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .registers 6

    const-string v0, "unifiedMediationParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 4
    const-string v0, "creativeAdm"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeAdm:Ljava/lang/String;

    .line 6
    const-string v0, "width"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->width:I

    .line 8
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->height:I

    .line 10
    const-string v0, "useNativeClose"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->useNativeClose:Z

    .line 12
    const-string v0, "omsdk_enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/utils/data/DataRetriever;->getBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lio/bidmachine/internal/s;->c()Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    iput-boolean v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->omsdkEnabled:Z

    .line 14
    sget-object v0, Lio/bidmachine/utils/IabUtils;->INSTANCE:Lio/bidmachine/utils/IabUtils;

    const-string v1, "cacheControl"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/utils/IabUtils;->toCacheControl(Ljava/lang/Object;)Lio/bidmachine/iab/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->cacheControl:Lio/bidmachine/iab/CacheControl;

    .line 16
    const-string v1, "placeholderTimeoutSec"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getFloat(Ljava/lang/Object;)F

    move-result v1

    iput v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->placeholderTimeoutSec:F

    .line 18
    const-string v1, "skipOffset"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->skipOffset:I

    .line 20
    const-string v1, "r1"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->r1:Z

    .line 22
    const-string v1, "r2"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->r2:Z

    .line 24
    const-string v1, "store_url"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->storeUrl:Ljava/lang/String;

    .line 26
    const-string v1, "progress_duration"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressDuration:I

    .line 28
    const-string v1, "close_button_control_asset"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/utils/IabUtils;->toIabElementStyle(Ljava/lang/Object;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->closeableViewStyle:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 30
    const-string v1, "countdown_control_asset"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/utils/IabUtils;->toIabElementStyle(Ljava/lang/Object;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->countDownStyle:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 32
    const-string v1, "progress_control_asset"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/utils/IabUtils;->toIabElementStyle(Ljava/lang/Object;)Lio/bidmachine/iab/utils/IabElementStyle;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressStyle:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 34
    const-string v0, "engaged_click_interaction_window_ms"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getDoubleOrNull(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_b1

    :cond_b0
    move-object v0, v1

    :goto_b1
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->engagedClickInteractionWindowMs:Ljava/lang/Long;

    .line 36
    const-string v0, "creativeProfileInfo"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    if-eqz v0, :cond_c0

    move-object v1, p1

    check-cast v1, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    :cond_c0
    iput-object v1, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeProfileInfo:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    return-void
.end method


# virtual methods
.method public final createEngagedClickParams(Lio/bidmachine/unified/UnifiedAdCallback;)Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;
    .registers 12

    const-string v0, "unifiedAdCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    .line 2
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->engagedClickInteractionWindowMs:Ljava/lang/Long;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeProfileInfo:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    if-nez v0, :cond_19

    sget-object v0, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;->Companion:Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo$Companion;->getDEFAULT_CREATIVE_PROFILE_INFO()Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;

    move-result-object v0

    :cond_19
    move-object v5, v0

    .line 5
    new-instance v6, Lio/bidmachine/EngagedClickTrackingObjectImpl;

    invoke-direct {v6, p1}, Lio/bidmachine/EngagedClickTrackingObjectImpl;-><init>(Lio/bidmachine/unified/UnifiedAdCallback;)V

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 6
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;-><init>(JLio/bidmachine/rendering/model/engagedclick/VisualConfig;Lio/bidmachine/rendering/model/engagedclick/CreativeProfileInfo;Lio/bidmachine/rendering/model/engagedclick/EngagedClickTrackingObject;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCacheControl()Lio/bidmachine/iab/CacheControl;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->cacheControl:Lio/bidmachine/iab/CacheControl;

    return-object v0
.end method

.method public final getCloseableViewStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->closeableViewStyle:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public final getCountDownStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->countDownStyle:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public final getCreativeAdm()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeAdm:Ljava/lang/String;

    return-object v0
.end method

.method public final getOmsdkEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->omsdkEnabled:Z

    return v0
.end method

.method public final getPlaceholderTimeoutSec()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->placeholderTimeoutSec:F

    return v0
.end method

.method public final getProgressDuration()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressDuration:I

    return v0
.end method

.method public final getProgressStyle()Lio/bidmachine/iab/utils/IabElementStyle;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->progressStyle:Lio/bidmachine/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public final getR1()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->r1:Z

    return v0
.end method

.method public final getR2()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->r2:Z

    return v0
.end method

.method public final getSkipOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->skipOffset:I

    return v0
.end method

.method public final getStoreUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->storeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseNativeClose()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->useNativeClose:Z

    return v0
.end method

.method public isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .registers 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->creativeAdm:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_39

    .line 5
    :cond_11
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->width:I

    if-nez v0, :cond_24

    .line 6
    const-string v0, "width"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    const-string v2, "notFound(KEY_WIDTH)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    .line 9
    :cond_24
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/MraidParams;->height:I

    if-nez v0, :cond_37

    .line 10
    const-string v0, "height"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    const-string v2, "notFound(KEY_HEIGHT)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1

    :cond_37
    const/4 p1, 0x1

    return p1

    .line 11
    :cond_39
    :goto_39
    const-string v0, "creativeAdm"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    const-string v2, "notFound(KEY_CREATIVE_ADM)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return v1
.end method
