###### Class io.bidmachine.protobuf.AdExtensionOrBuilder (io.bidmachine.protobuf.AdExtensionOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/AdExtensionOrBuilder;
.super Ljava/lang/Object;
.source "AdExtensionOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsCustomParams(Ljava/lang/String;)Z
.end method

.method public abstract getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
.end method

.method public abstract getAdCacheControlValue()I
.end method

.method public abstract getAdCacheMaxAge()I
.end method

.method public abstract getAdFlexibleSize()Z
.end method

.method public abstract getAdMarkupLoadingTimeout()I
.end method

.method public abstract getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end method

.method public abstract getCloseButtonOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
.end method

.method public abstract getCompanionSkipoffset()I
.end method

.method public abstract getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end method

.method public abstract getCountdownOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
.end method

.method public abstract getCreativeExtension()Lio/bidmachine/protobuf/CreativeExtension;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCreativeExtensionOrBuilder()Lio/bidmachine/protobuf/CreativeExtensionOrBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCreativeLoadingMethod()Lio/bidmachine/protobuf/CreativeLoadingMethod;
.end method

.method public abstract getCreativeLoadingMethodValue()I
.end method

.method public abstract getCreativeLoadingTimeout()I
.end method

.method public abstract getCridMonitoringEnabled()Z
.end method

.method public abstract getCustomParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCustomParamsCount()I
.end method

.method public abstract getCustomParamsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
.end method

.method public abstract getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
.end method

.method public abstract getEventConfigurationOrBuilder()Lio/bidmachine/protobuf/AdExtension$EventConfigurationOrBuilder;
.end method

.method public abstract getEventCount()I
.end method

.method public abstract getEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
.end method

.method public abstract getEventOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIgnoresSafeAreaLayoutGuide()Z
.end method

.method public abstract getLoadSkipoffset()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMraidCreativeValidationRequired()Z
.end method

.method public abstract getPlaceholderTimeout()F
.end method

.method public abstract getPreload()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPreloadAd()Z
.end method

.method public abstract getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end method

.method public abstract getProgressDuration()I
.end method

.method public abstract getProgressOrBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;
.end method

.method public abstract getR1()Z
.end method

.method public abstract getR1Delay()I
.end method

.method public abstract getR2()Z
.end method

.method public abstract getRenderingConfiguration()Lio/bidmachine/protobuf/rendering/Rendering;
.end method

.method public abstract getRenderingConfigurationOrBuilder()Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;
.end method

.method public abstract getSkipoffset()I
.end method

.method public abstract getStoreUrl()Ljava/lang/String;
.end method

.method public abstract getStoreUrlBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getUseEmbeddedBrowser()Z
.end method

.method public abstract getUseNativeClose()Z
.end method

.method public abstract getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
.end method

.method public abstract getViewabilityConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;
.end method

.method public abstract getViewabilityDurationThreshold()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getViewabilityIgnoreOverlap()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getViewabilityIgnoreWindowFocus()Z
.end method

.method public abstract getViewabilityPixelThreshold()F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getViewabilityTimeThreshold()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasCloseButton()Z
.end method

.method public abstract hasCountdown()Z
.end method

.method public abstract hasCreativeExtension()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasEventConfiguration()Z
.end method

.method public abstract hasProgress()Z
.end method

.method public abstract hasRenderingConfiguration()Z
.end method

.method public abstract hasViewabilityConfiguration()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
