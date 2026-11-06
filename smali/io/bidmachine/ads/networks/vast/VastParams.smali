###### Class io.bidmachine.ads.networks.vast.VastParams (io.bidmachine.ads.networks.vast.VastParams)
.class public final Lio/bidmachine/ads/networks/vast/VastParams;
.super Lio/bidmachine/unified/UnifiedParams;
.source "SourceFile"


# instance fields
.field public final cacheControl:Lio/bidmachine/iab/CacheControl;

.field public final companionSkipOffset:I

.field public final creativeAdm:Ljava/lang/String;

.field public final omsdkEnabled:Z

.field public final placeholderTimeoutSec:F

.field public final skipOffset:I

.field public final useNativeClose:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedMediationParams;)V
    .registers 4

    const-string v0, "unifiedMediationParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/unified/UnifiedParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams;)V

    .line 4
    const-string v0, "creativeAdm"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->creativeAdm:Ljava/lang/String;

    .line 6
    sget-object v0, Lio/bidmachine/utils/IabUtils;->INSTANCE:Lio/bidmachine/utils/IabUtils;

    const-string v1, "cacheControl"

    invoke-interface {p1, v1}, Lio/bidmachine/utils/data/DataRetriever;->getObjectOrNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/utils/IabUtils;->toCacheControl(Ljava/lang/Object;)Lio/bidmachine/iab/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->cacheControl:Lio/bidmachine/iab/CacheControl;

    .line 8
    const-string v0, "placeholderTimeoutSec"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->placeholderTimeoutSec:F

    .line 10
    const-string v0, "skipOffset"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->skipOffset:I

    .line 12
    const-string v0, "companionSkipOffset"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getInteger(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->companionSkipOffset:I

    .line 14
    const-string v0, "useNativeClose"

    invoke-interface {p1, v0}, Lio/bidmachine/utils/data/DataRetriever;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->useNativeClose:Z

    .line 16
    const-string v0, "omsdk_enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/utils/data/DataRetriever;->getBoolean(Ljava/lang/Object;Z)Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-static {}, Lio/bidmachine/internal/s;->c()Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    iput-boolean v1, p0, Lio/bidmachine/ads/networks/vast/VastParams;->omsdkEnabled:Z

    return-void
.end method


# virtual methods
.method public final getCacheControl()Lio/bidmachine/iab/CacheControl;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->cacheControl:Lio/bidmachine/iab/CacheControl;

    return-object v0
.end method

.method public final getCompanionSkipOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->companionSkipOffset:I

    return v0
.end method

.method public final getCreativeAdm()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->creativeAdm:Ljava/lang/String;

    return-object v0
.end method

.method public final getOmsdkEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->omsdkEnabled:Z

    return v0
.end method

.method public final getPlaceholderTimeoutSec()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->placeholderTimeoutSec:F

    return v0
.end method

.method public final getSkipOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->skipOffset:I

    return v0
.end method

.method public final getUseNativeClose()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->useNativeClose:Z

    return v0
.end method

.method public isValid(Lio/bidmachine/unified/UnifiedAdCallback;)Z
    .registers 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/vast/VastParams;->creativeAdm:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p1, 0x1

    return p1

    .line 2
    :cond_12
    :goto_12
    const-string v0, "creativeAdm"

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->notFound(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v0

    const-string v1, "notFound(KEY_CREATIVE_ADM)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    const/4 p1, 0x0

    return p1
.end method
