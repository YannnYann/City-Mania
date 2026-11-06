###### Class io.bidmachine.protobuf.InitResponseOrBuilder (io.bidmachine.protobuf.InitResponseOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/InitResponseOrBuilder;
.super Ljava/lang/Object;
.source "InitResponseOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsAdCachePlacementControl(Ljava/lang/String;)Z
.end method

.method public abstract getAdCacheControl()Lio/bidmachine/protobuf/AdCacheControl;
.end method

.method public abstract getAdCacheControlValue()I
.end method

.method public abstract getAdCacheMaxAge()I
.end method

.method public abstract getAdCachePlacementControl()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAdCachePlacementControlCount()I
.end method

.method public abstract getAdCachePlacementControlMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/protobuf/AdCachePlacementControl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdCachePlacementControlOrDefault(Ljava/lang/String;Lio/bidmachine/protobuf/AdCachePlacementControl;)Lio/bidmachine/protobuf/AdCachePlacementControl;
.end method

.method public abstract getAdCachePlacementControlOrThrow(Ljava/lang/String;)Lio/bidmachine/protobuf/AdCachePlacementControl;
.end method

.method public abstract getAdNetworks(I)Lio/bidmachine/protobuf/AdNetwork;
.end method

.method public abstract getAdNetworksCount()I
.end method

.method public abstract getAdNetworksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdNetworksLoadingTimeout()I
.end method

.method public abstract getAdNetworksOrBuilder(I)Lio/bidmachine/protobuf/AdNetworkOrBuilder;
.end method

.method public abstract getAdNetworksOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdRequestTmax()I
.end method

.method public abstract getAssetCacheConfiguration()Lio/bidmachine/protobuf/sdk/AssetCache$Configuration;
.end method

.method public abstract getAssetCacheConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/AssetCache$ConfigurationOrBuilder;
.end method

.method public abstract getBmifvTtlSessions()I
.end method

.method public abstract getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;
.end method

.method public abstract getCrashSignalConfigOrBuilder()Lio/bidmachine/protobuf/SdkCrashSignalConfigOrBuilder;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
.end method

.method public abstract getEndpoint()Ljava/lang/String;
.end method

.method public abstract getEndpointBytes()Lcom/explorestack/protobuf/ByteString;
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

.method public abstract getExtras()Lio/bidmachine/protobuf/Extras;
.end method

.method public abstract getExtrasOrBuilder()Lio/bidmachine/protobuf/ExtrasOrBuilder;
.end method

.method public abstract getRestrictionMode()Lio/bidmachine/protobuf/sdk/RestrictionMode;
.end method

.method public abstract getRestrictionModeValue()I
.end method

.method public abstract getSdkAnalyticConfig()Lio/bidmachine/protobuf/SdkAnalyticConfig;
.end method

.method public abstract getSdkAnalyticConfigOrBuilder()Lio/bidmachine/protobuf/SdkAnalyticConfigOrBuilder;
.end method

.method public abstract getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;
.end method

.method public abstract getSdkAnalyticConfigV2OrBuilder()Lio/bidmachine/protobuf/sdk/ConfigurationOrBuilder;
.end method

.method public abstract getSessionResetAfter()I
.end method

.method public abstract getShowWithoutInternet()Z
.end method

.method public abstract getTokenConfigurations(I)Lio/bidmachine/protobuf/TokenConfiguration;
.end method

.method public abstract getTokenConfigurationsCount()I
.end method

.method public abstract getTokenConfigurationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/TokenConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTokenConfigurationsOrBuilder(I)Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;
.end method

.method public abstract getTokenConfigurationsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/TokenConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAssetCacheConfiguration()Z
.end method

.method public abstract hasCrashSignalConfig()Z
.end method

.method public abstract hasEventConfiguration()Z
.end method

.method public abstract hasExtras()Z
.end method

.method public abstract hasSdkAnalyticConfig()Z
.end method

.method public abstract hasSdkAnalyticConfigV2()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
