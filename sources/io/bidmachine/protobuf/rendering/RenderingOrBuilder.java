package io.bidmachine.protobuf.rendering;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import io.bidmachine.protobuf.rendering.Rendering;
import io.bidmachine.protobuf.sdk.ViewabilityConfiguration;
import io.bidmachine.protobuf.sdk.ViewabilityConfigurationOrBuilder;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface RenderingOrBuilder extends MessageOrBuilder {
    boolean containsCustomParams(String str);

    Rendering.Background getBackground();

    Rendering.BackgroundOrBuilder getBackgroundOrBuilder();

    @Deprecated
    Rendering.CacheType getCacheType();

    @Deprecated
    int getCacheTypeValue();

    @Deprecated
    Map<String, String> getCustomParams();

    int getCustomParamsCount();

    Map<String, String> getCustomParamsMap();

    String getCustomParamsOrDefault(String str, String str2);

    String getCustomParamsOrThrow(String str);

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* JADX INFO: renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo687getDefaultInstanceForType();

    RenderingFeature getFeatures(int i);

    int getFeaturesCount();

    List<RenderingFeature> getFeaturesList();

    RenderingFeatureOrBuilder getFeaturesOrBuilder(int i);

    List<? extends RenderingFeatureOrBuilder> getFeaturesOrBuilderList();

    Rendering.Orientation getOrientation();

    int getOrientationValue();

    Rendering.Phase getPhases(int i);

    int getPhasesCount();

    List<Rendering.Phase> getPhasesList();

    Rendering.PhaseOrBuilder getPhasesOrBuilder(int i);

    List<? extends Rendering.PhaseOrBuilder> getPhasesOrBuilderList();

    Rendering.ProductConfiguration getProductConfiguration();

    Rendering.ProductConfigurationOrBuilder getProductConfigurationOrBuilder();

    Rendering.SKStoreConfiguration getSkAdNetwork();

    Rendering.SKStoreConfigurationOrBuilder getSkAdNetworkOrBuilder();

    ViewabilityConfiguration getViewabilityConfiguration();

    ViewabilityConfigurationOrBuilder getViewabilityConfigurationOrBuilder();

    WatermarkConfiguration getWatermarkConfiguration();

    WatermarkConfigurationOrBuilder getWatermarkConfigurationOrBuilder();

    boolean hasBackground();

    boolean hasProductConfiguration();

    boolean hasSkAdNetwork();

    boolean hasViewabilityConfiguration();

    boolean hasWatermarkConfiguration();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
