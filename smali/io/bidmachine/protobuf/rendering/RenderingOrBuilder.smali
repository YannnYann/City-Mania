###### Class io.bidmachine.protobuf.rendering.RenderingOrBuilder (io.bidmachine.protobuf.rendering.RenderingOrBuilder)
.class public interface abstract Lio/bidmachine/protobuf/rendering/RenderingOrBuilder;
.super Ljava/lang/Object;
.source "RenderingOrBuilder.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract containsCustomParams(Ljava/lang/String;)Z
.end method

.method public abstract getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;
.end method

.method public abstract getBackgroundOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$BackgroundOrBuilder;
.end method

.method public abstract getCacheType()Lio/bidmachine/protobuf/rendering/Rendering$CacheType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCacheTypeValue()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
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

.method public abstract getFeatures(I)Lio/bidmachine/protobuf/rendering/RenderingFeature;
.end method

.method public abstract getFeaturesCount()I
.end method

.method public abstract getFeaturesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/RenderingFeature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeaturesOrBuilder(I)Lio/bidmachine/protobuf/rendering/RenderingFeatureOrBuilder;
.end method

.method public abstract getFeaturesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/RenderingFeatureOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrientation()Lio/bidmachine/protobuf/rendering/Rendering$Orientation;
.end method

.method public abstract getOrientationValue()I
.end method

.method public abstract getPhases(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase;
.end method

.method public abstract getPhasesCount()I
.end method

.method public abstract getPhasesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhasesOrBuilder(I)Lio/bidmachine/protobuf/rendering/Rendering$PhaseOrBuilder;
.end method

.method public abstract getPhasesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/rendering/Rendering$PhaseOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProductConfiguration()Lio/bidmachine/protobuf/rendering/Rendering$ProductConfiguration;
.end method

.method public abstract getProductConfigurationOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$ProductConfigurationOrBuilder;
.end method

.method public abstract getSkAdNetwork()Lio/bidmachine/protobuf/rendering/Rendering$SKStoreConfiguration;
.end method

.method public abstract getSkAdNetworkOrBuilder()Lio/bidmachine/protobuf/rendering/Rendering$SKStoreConfigurationOrBuilder;
.end method

.method public abstract getViewabilityConfiguration()Lio/bidmachine/protobuf/sdk/ViewabilityConfiguration;
.end method

.method public abstract getViewabilityConfigurationOrBuilder()Lio/bidmachine/protobuf/sdk/ViewabilityConfigurationOrBuilder;
.end method

.method public abstract getWatermarkConfiguration()Lio/bidmachine/protobuf/rendering/WatermarkConfiguration;
.end method

.method public abstract getWatermarkConfigurationOrBuilder()Lio/bidmachine/protobuf/rendering/WatermarkConfigurationOrBuilder;
.end method

.method public abstract hasBackground()Z
.end method

.method public abstract hasProductConfiguration()Z
.end method

.method public abstract hasSkAdNetwork()Z
.end method

.method public abstract hasViewabilityConfiguration()Z
.end method

.method public abstract hasWatermarkConfiguration()Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
