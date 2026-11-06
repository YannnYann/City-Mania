package io.bidmachine.ads.networks.adaptiverendering;

import com.explorestack.protobuf.ProtocolStringList;
import io.bidmachine.EngagedClickTrackingObjectImpl;
import io.bidmachine.ads.networks.adaptiverendering.measurer.AdMeasurerFactory;
import io.bidmachine.core.Logger;
import io.bidmachine.internal.AbstractC4224h;
import io.bidmachine.protobuf.rendering.Rendering;
import io.bidmachine.protobuf.rendering.RenderingFeature;
import io.bidmachine.protobuf.rendering.WatermarkAlgorithm;
import io.bidmachine.protobuf.rendering.WatermarkConfiguration;
import io.bidmachine.protobuf.rendering.WatermarkLocation;
import io.bidmachine.protobuf.rendering.WatermarkPayloadType;
import io.bidmachine.protobuf.sdk.ViewabilityConfiguration;
import io.bidmachine.rendering.measurer.MeasurerFactory;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.AdElementType;
import io.bidmachine.rendering.model.AdParams;
import io.bidmachine.rendering.model.AdPhaseParams;
import io.bidmachine.rendering.model.AppearanceParams;
import io.bidmachine.rendering.model.Background;
import io.bidmachine.rendering.model.BackgroundSource;
import io.bidmachine.rendering.model.Base64ResourceSource;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmType;
import io.bidmachine.rendering.model.BrokenCreativeDetectorParams;
import io.bidmachine.rendering.model.CacheType;
import io.bidmachine.rendering.model.Color;
import io.bidmachine.rendering.model.ColorBackgroundSource;
import io.bidmachine.rendering.model.ColorPlaceholderSource;
import io.bidmachine.rendering.model.ColorSource;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.EventParams;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.FontStyleType;
import io.bidmachine.rendering.model.Gradient;
import io.bidmachine.rendering.model.GradientColorSource;
import io.bidmachine.rendering.model.GradientDirection;
import io.bidmachine.rendering.model.GradientType;
import io.bidmachine.rendering.model.HorizontalGravity;
import io.bidmachine.rendering.model.HtmlResourceSource;
import io.bidmachine.rendering.model.Image;
import io.bidmachine.rendering.model.ImageBackgroundSource;
import io.bidmachine.rendering.model.ImagePlaceholderSource;
import io.bidmachine.rendering.model.MethodParams;
import io.bidmachine.rendering.model.NamePlaceholderSource;
import io.bidmachine.rendering.model.OneColorSource;
import io.bidmachine.rendering.model.Padding;
import io.bidmachine.rendering.model.Placeholder;
import io.bidmachine.rendering.model.PlaceholderSource;
import io.bidmachine.rendering.model.Resource;
import io.bidmachine.rendering.model.ResourceSource;
import io.bidmachine.rendering.model.ScaleType;
import io.bidmachine.rendering.model.ScriptConfig;
import io.bidmachine.rendering.model.SideBindParams;
import io.bidmachine.rendering.model.SideType;
import io.bidmachine.rendering.model.StopDetectorAfter;
import io.bidmachine.rendering.model.UrlResourceSource;
import io.bidmachine.rendering.model.WatermarkParams;
import io.bidmachine.rendering.model.XmlResourceSource;
import io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import io.bidmachine.rendering.model.engagedclick.EngagedClickTrackingObject;
import io.bidmachine.rendering.model.engagedclick.ProfileSource;
import io.bidmachine.rendering.model.engagedclick.VisualConfig;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.util.ColorUtils;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams;
import io.bidmachine.util.visibilitytracking.VisibilityParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtilsKt;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingParams extends UnifiedParams {
    public final AdParams adParams;
    public final CreativeProfileInfo creativeProfileInfo;
    public final EngagedClickTrackingObject engagedClickTrackingObject;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;

        static {
            int[] iArr = new int[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.values().length];
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_WIDTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_HEIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[WatermarkAlgorithm.values().length];
            try {
                iArr2[WatermarkAlgorithm.WM_ALGO_RGB_STRIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[WatermarkPayloadType.values().length];
            try {
                iArr3[WatermarkPayloadType.WM_PAYLOAD_BID_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[WatermarkLocation.values().length];
            try {
                iArr4[WatermarkLocation.WM_LOCATION_TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr4[WatermarkLocation.WM_LOCATION_TOP_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr4[WatermarkLocation.WM_LOCATION_TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr4[WatermarkLocation.WM_LOCATION_BOTTOM_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr4[WatermarkLocation.WM_LOCATION_BOTTOM_CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr4[WatermarkLocation.WM_LOCATION_BOTTOM_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[Rendering.Phase.ViewComponent.ScriptConfig.InjectTiming.values().length];
            try {
                iArr5[Rendering.Phase.ViewComponent.ScriptConfig.InjectTiming.INJECT_TIMING_AT_DOCUMENT_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr5[Rendering.Phase.ViewComponent.ScriptConfig.InjectTiming.INJECT_TIMING_AT_DOCUMENT_END.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            $EnumSwitchMapping$4 = iArr5;
        }
    }

    public /* synthetic */ AdaptiveRenderingParams(UnifiedMediationParams unifiedMediationParams, UnifiedAdCallback unifiedAdCallback, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(unifiedMediationParams, (i & 2) != 0 ? null : unifiedAdCallback);
    }

    public static final String createAdParams$lambda$1() {
        return "Can't create ViewabilityTrackerParams";
    }

    public static final String createBackground$lambda$19() {
        return "BackgroundSource don't found. Can't create Color";
    }

    public static final String createBackground$lambda$20() {
        return "BackgroundSource don't found. Can't create Image";
    }

    public static final String createBackground$lambda$21() {
        return "BackgroundSource don't found. Set one of: color, gradient";
    }

    public static final String createBrokenCreativeDetectorParams$lambda$40() {
        return "BrokenCreativeDetector algorithms is empty";
    }

    public static final String createBrokenCreativeDetectorParams$lambda$41() {
        return "Not all BrokenCreativeDetector algorithms were applied, check if the algorithms are specified correctly";
    }

    public static final String createColor$lambda$22() {
        return "ColorSource don't found. Can't parse context color";
    }

    public static final String createColor$lambda$23() {
        return "ColorSource don't found. Can't create context gradient";
    }

    public static final String createColor$lambda$24() {
        return "ColorSource don't found. Can't parse color";
    }

    public static final String createColor$lambda$25() {
        return "ColorSource don't found. Can't create Gradient";
    }

    public static final String createColor$lambda$26() {
        return "ColorSource don't found. Set one of: color, gradient, context_color, context_gradient";
    }

    public static final String createElementLayoutParams$lambda$18$lambda$17(Rendering.Phase.ViewComponent.Layout.Constraint.Anchor anchor) {
        return "Unsupported SourceAnchor - " + anchor;
    }

    public static final String createGradient$lambda$27(String type) {
        Intrinsics.checkNotNullParameter(type, "$type");
        return "Incorrect gradient type parameter - " + type;
    }

    public static final String createGradient$lambda$28(String direction) {
        Intrinsics.checkNotNullParameter(direction, "$direction");
        return "Incorrect gradient direction parameter - " + direction;
    }

    public static final String createGradient$lambda$30() {
        return "Failed to parse all colors. Check if colors are specified correctly.";
    }

    public static final String createGradient$lambda$31() {
        return "Not all colors were parsed, check if the colors are specified correctly";
    }

    public static final String createPlaceholder$lambda$34() {
        return "PlaceholderSource don't found. Can't create Color";
    }

    public static final String createPlaceholder$lambda$35() {
        return "PlaceholderSource don't found. Can't create Image";
    }

    public static final String createPlaceholder$lambda$36() {
        return "PlaceholderSource don't found. Set one of: name, color, gradient";
    }

    public static final String createResource$lambda$32() {
        return "ResourceSource don't found. Set one of: html, xml";
    }

    public static final String createResource$lambda$33() {
        return "ResourceSource don't found. Set one of: base64, url, payload";
    }

    public final AdElementParams createAdElementParams(Rendering.Phase.ViewComponent viewComponent, List<RenderingFeature> phaseFeatureList) {
        AdElementType adElementType;
        Intrinsics.checkNotNullParameter(phaseFeatureList, "phaseFeatureList");
        if (viewComponent == null || viewComponent == Rendering.Phase.ViewComponent.getDefaultInstance() || (adElementType = AdaptiveRenderingParamsKt.toAdElementType(viewComponent.getType())) == null) {
            return null;
        }
        String it = viewComponent.getText();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        String str = it.length() > 0 ? it : null;
        String name = viewComponent.getName();
        Intrinsics.checkNotNullExpressionValue(name, "viewComponent.name");
        Resource resourceCreateResource = createResource(viewComponent.getResource());
        String placeholder = viewComponent.getPlaceholder();
        ElementLayoutParams elementLayoutParamsCreateElementLayoutParams = createElementLayoutParams(viewComponent.getLayout());
        AppearanceParams appearanceParamsCreateAppearanceParams = createAppearanceParams(viewComponent.getAppearance());
        Map<String, String> customParamsMap = viewComponent.getCustomParamsMap();
        Intrinsics.checkNotNullExpressionValue(customParamsMap, "viewComponent.customParamsMap");
        List<MeasurerFactory> listCreateMeasurerFactoryList = createMeasurerFactoryList(viewComponent.getMeasurersList());
        List<RenderingFeature> featuresList = viewComponent.getFeaturesList();
        Intrinsics.checkNotNullExpressionValue(featuresList, "viewComponent.featuresList");
        BrokenCreativeDetectorParams brokenCreativeDetectorParamsCreateBrokenCreativeDetectorParams = createBrokenCreativeDetectorParams(featuresList);
        EngagedClickParams engagedClickParamsCreateEngagedClickParams = createEngagedClickParams(phaseFeatureList);
        List<Rendering.Phase.ViewComponent.ScriptConfig> scriptsList = viewComponent.getScriptsList();
        Intrinsics.checkNotNullExpressionValue(scriptsList, "viewComponent.scriptsList");
        return new AdElementParams(adElementType, name, resourceCreateResource, placeholder, str, elementLayoutParamsCreateElementLayoutParams, appearanceParamsCreateAppearanceParams, customParamsMap, listCreateMeasurerFactoryList, brokenCreativeDetectorParamsCreateBrokenCreativeDetectorParams, engagedClickParamsCreateEngagedClickParams, createScriptConfigs(scriptsList), !viewComponent.hasPrerender() || viewComponent.getPrerender().getValue());
    }

    public final AdParams createAdParams(Rendering rendering, VisibilityParams visibilityParams, WatermarkParams watermarkParams) {
        Intrinsics.checkNotNullParameter(rendering, "rendering");
        Intrinsics.checkNotNullParameter(visibilityParams, "visibilityParams");
        ViewabilityConfiguration viewabilityConfiguration = rendering.getViewabilityConfiguration();
        Intrinsics.checkNotNullExpressionValue(viewabilityConfiguration, "rendering.viewabilityConfiguration");
        ViewabilityTrackerParams viewabilityTrackerParams = ProtoUtilsKt.toViewabilityTrackerParams(viewabilityConfiguration);
        if (viewabilityTrackerParams == null) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createAdParams$lambda$1();
                }
            });
            return null;
        }
        AdParams.Builder customParams = new AdParams.Builder(viewabilityTrackerParams).setOrientation(AdaptiveRenderingParamsKt.toOrientation(rendering.getOrientation())).setBackground(createBackground(rendering.getBackground())).setVisibilityParams(visibilityParams).setWatermarkParams(watermarkParams).setCustomParams(rendering.getCustomParamsMap());
        CacheType cacheType = AdaptiveRenderingParamsKt.toCacheType(rendering.getCacheType());
        if (cacheType != null) {
            customParams.setCacheType(cacheType);
        }
        List<Rendering.Phase> phasesList = rendering.getPhasesList();
        Intrinsics.checkNotNullExpressionValue(phasesList, "rendering.phasesList");
        List<Rendering.Phase> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) phasesList);
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$createAdParams$lambda$4$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((Rendering.Phase) t).getSequence()), Integer.valueOf(((Rendering.Phase) t2).getSequence()));
                }
            });
        }
        for (Rendering.Phase phase : mutableList) {
            AdPhaseParams adPhaseParamsCreateAdPhaseParams = createAdPhaseParams(phase);
            if (adPhaseParamsCreateAdPhaseParams != null) {
                if (phase.getSequence() == -1) {
                    customParams.setPlaceholderParams(adPhaseParamsCreateAdPhaseParams);
                } else {
                    customParams.addAdPhaseParams(adPhaseParamsCreateAdPhaseParams);
                }
            }
        }
        return customParams.build();
    }

    public final AdPhaseParams createAdPhaseParams(Rendering.Phase phase) {
        if (phase == null || phase == Rendering.Phase.getDefaultInstance()) {
            return null;
        }
        AdPhaseParams.Builder background = new AdPhaseParams.Builder(phase.getSequence()).setBackground(createBackground(phase.getBackground()));
        ProtocolStringList stateGroupsList = phase.getStateGroupsList();
        Intrinsics.checkNotNullExpressionValue(stateGroupsList, "phase.stateGroupsList");
        AdPhaseParams.Builder customParams = background.setStateGroups(CollectionsKt___CollectionsKt.toMutableList((Collection) stateGroupsList)).setCustomParams(phase.getCustomParamsMap());
        List<RenderingFeature> featuresList = phase.getFeaturesList();
        Intrinsics.checkNotNullExpressionValue(featuresList, "phase.featuresList");
        List<Rendering.Phase.ViewComponent> adsList = phase.getAdsList();
        Intrinsics.checkNotNullExpressionValue(adsList, "phase.adsList");
        Iterator<T> it = adsList.iterator();
        while (it.hasNext()) {
            AdElementParams adElementParamsCreateAdElementParams = createAdElementParams((Rendering.Phase.ViewComponent) it.next(), featuresList);
            if (adElementParamsCreateAdElementParams != null) {
                customParams.addAdsElementParams(adElementParamsCreateAdElementParams);
            }
        }
        List<Rendering.Phase.ViewComponent> controlsList = phase.getControlsList();
        Intrinsics.checkNotNullExpressionValue(controlsList, "phase.controlsList");
        Iterator<T> it2 = controlsList.iterator();
        while (it2.hasNext()) {
            AdElementParams adElementParamsCreateAdElementParams2 = createAdElementParams((Rendering.Phase.ViewComponent) it2.next(), featuresList);
            if (adElementParamsCreateAdElementParams2 != null) {
                customParams.addControlsElementParams(adElementParamsCreateAdElementParams2);
            }
        }
        List<Rendering.Phase.Event> eventsList = phase.getEventsList();
        Intrinsics.checkNotNullExpressionValue(eventsList, "phase.eventsList");
        Iterator<T> it3 = eventsList.iterator();
        while (it3.hasNext()) {
            EventParams eventParamsCreateEventParams = createEventParams((Rendering.Phase.Event) it3.next());
            if (eventParamsCreateEventParams != null) {
                customParams.addEventParams(eventParamsCreateEventParams);
            }
        }
        List<Rendering.Phase.MethodComponent> methodsList = phase.getMethodsList();
        Intrinsics.checkNotNullExpressionValue(methodsList, "phase.methodsList");
        Iterator<T> it4 = methodsList.iterator();
        while (it4.hasNext()) {
            String name = ((Rendering.Phase.MethodComponent) it4.next()).getName();
            Intrinsics.checkNotNullExpressionValue(name, "methodComponent.name");
            customParams.addMethodParams(new MethodParams(name));
        }
        return customParams.build();
    }

    public final AppearanceParams createAppearanceParams(Rendering.Phase.ViewComponent.Appearance appearance) {
        if (appearance == null || appearance == Rendering.Phase.ViewComponent.Appearance.getDefaultInstance()) {
            return new AppearanceParams(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 65535, null);
        }
        Background backgroundCreateBackground = createBackground(appearance.getBackground());
        Boolean boolValueOf = Boolean.valueOf(appearance.getVisible());
        Boolean boolValueOf2 = Boolean.valueOf(appearance.getClickable());
        Float fValueOf = Float.valueOf((float) appearance.getOpacity());
        Float fValueOf2 = Float.valueOf((float) appearance.getFontSize());
        FontStyleType fontStyleType = FontStyleType.Companion.get(appearance.getFontStyle());
        Boolean boolValueOf3 = Boolean.valueOf(appearance.getOutlined());
        Float fValueOf3 = Float.valueOf((float) appearance.getStrokeWidth());
        Integer colorRGBASafely = ColorUtils.parseColorRGBASafely(appearance.getStrokeColor());
        Integer colorRGBASafely2 = ColorUtils.parseColorRGBASafely(appearance.getFillColor());
        Integer colorRGBASafely3 = ColorUtils.parseColorRGBASafely(appearance.getShadowColor());
        Padding padding = Padding.Companion.parse(appearance.getPadding());
        Float fValueOf4 = Float.valueOf((float) appearance.getCornerRadius());
        Integer numValueOf = Integer.valueOf(appearance.getTextNumberOfLines());
        Float fValueOf5 = Float.valueOf((float) appearance.getTextLineSpacing());
        HorizontalGravity horizontalGravity = HorizontalGravity.Companion.get(appearance.getTextAlignment());
        if (horizontalGravity == null) {
            horizontalGravity = HorizontalGravity.Center;
        }
        return new AppearanceParams(backgroundCreateBackground, boolValueOf, boolValueOf2, fValueOf, fValueOf2, fontStyleType, boolValueOf3, fValueOf3, colorRGBASafely, colorRGBASafely2, colorRGBASafely3, padding, fValueOf4, numValueOf, fValueOf5, horizontalGravity);
    }

    public final Background createBackground(Rendering.Background background) {
        BackgroundSource imageBackgroundSource = null;
        if (background == null || background == Rendering.Background.getDefaultInstance()) {
            return null;
        }
        if (background.hasColor()) {
            Color colorCreateColor = createColor(background.getColor());
            if (colorCreateColor != null) {
                imageBackgroundSource = new ColorBackgroundSource(colorCreateColor);
            } else {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda1
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createBackground$lambda$19();
                    }
                });
            }
        } else if (background.hasImage()) {
            Image imageCreateImage = createImage(background.getImage());
            if (imageCreateImage != null) {
                imageBackgroundSource = new ImageBackgroundSource(imageCreateImage);
            } else {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda2
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createBackground$lambda$20();
                    }
                });
            }
        } else {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda3
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createBackground$lambda$21();
                }
            });
        }
        return new Background((float) background.getOpacity(), imageBackgroundSource, createPlaceholder(background.getPlaceholder()));
    }

    public final BrokenCreativeDetectorParams createBrokenCreativeDetectorParams(List<RenderingFeature> list) {
        Object next;
        RenderingFeature.BrokenCreativeDetector brokenCreativeDetector;
        if (list.isEmpty()) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            RenderingFeature renderingFeature = (RenderingFeature) next;
            if (renderingFeature.hasBrokenCreativeDetector() && renderingFeature.getBrokenCreativeDetector().hasConfiguration()) {
                break;
            }
        }
        RenderingFeature renderingFeature2 = (RenderingFeature) next;
        RenderingFeature.BrokenCreativeDetector.Configuration configuration = (renderingFeature2 == null || (brokenCreativeDetector = renderingFeature2.getBrokenCreativeDetector()) == null) ? null : brokenCreativeDetector.getConfiguration();
        if (configuration == null) {
            return null;
        }
        List<RenderingFeature.BrokenCreativeDetector.Algorithm> algorithmsList = configuration.getAlgorithmsList();
        Intrinsics.checkNotNullExpressionValue(algorithmsList, "brokenCreativeDetectorConfiguration.algorithmsList");
        ArrayList arrayList = new ArrayList();
        for (RenderingFeature.BrokenCreativeDetector.Algorithm algorithm : algorithmsList) {
            BrokenCreativeAlgorithmType brokenCreativeAlgorithmType = BrokenCreativeAlgorithmType.Companion.get(algorithm.getName());
            BrokenCreativeAlgorithmParams brokenCreativeAlgorithmParams = brokenCreativeAlgorithmType == null ? null : new BrokenCreativeAlgorithmParams(brokenCreativeAlgorithmType, (float) algorithm.getThreshold(), (float) algorithm.getWeight());
            if (brokenCreativeAlgorithmParams != null) {
                arrayList.add(brokenCreativeAlgorithmParams);
            }
        }
        if (arrayList.isEmpty()) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda7
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createBrokenCreativeDetectorParams$lambda$40();
                }
            });
            return null;
        }
        if (arrayList.size() != algorithmsList.size()) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda8
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createBrokenCreativeDetectorParams$lambda$41();
                }
            });
        }
        long timeout = (long) configuration.getTimeout();
        double downscaleFactor = configuration.getDownscaleFactor();
        boolean errorOnly = configuration.getErrorOnly();
        boolean allowDuplicate = configuration.getAllowDuplicate();
        StopDetectorAfter stopDetectorAfter = StopDetectorAfter.Companion.get(configuration.getStopAfter());
        if (stopDetectorAfter == null) {
            stopDetectorAfter = StopDetectorAfter.AnyCreative;
        }
        return new BrokenCreativeDetectorParams(timeout, downscaleFactor, errorOnly, allowDuplicate, stopDetectorAfter, configuration.getWeightThreshold(), arrayList);
    }

    public final Color createColor(Rendering.Color color) {
        Pair pair;
        if (color == null || color == Rendering.Color.getDefaultInstance()) {
            return null;
        }
        if (color.hasContextColor()) {
            Integer colorRGBASafely = ColorUtils.parseColorRGBASafely(color.getContextColor());
            if (colorRGBASafely == null) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda12
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createColor$lambda$22();
                    }
                });
                return null;
            }
            pair = TuplesKt.to(new OneColorSource(colorRGBASafely.intValue()), Boolean.TRUE);
        } else if (color.hasContextGradient()) {
            Gradient gradientCreateGradient = createGradient(color.getContextGradient());
            if (gradientCreateGradient == null) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda13
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createColor$lambda$23();
                    }
                });
                return null;
            }
            pair = TuplesKt.to(new GradientColorSource(gradientCreateGradient), Boolean.TRUE);
        } else if (color.hasColor()) {
            Integer colorRGBASafely2 = ColorUtils.parseColorRGBASafely(color.getColor());
            if (colorRGBASafely2 == null) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda14
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createColor$lambda$24();
                    }
                });
                return null;
            }
            pair = TuplesKt.to(new OneColorSource(colorRGBASafely2.intValue()), Boolean.FALSE);
        } else if (color.hasGradient()) {
            Gradient gradientCreateGradient2 = createGradient(color.getGradient());
            if (gradientCreateGradient2 == null) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda15
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createColor$lambda$25();
                    }
                });
                return null;
            }
            pair = TuplesKt.to(new GradientColorSource(gradientCreateGradient2), Boolean.FALSE);
        } else {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda16
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createColor$lambda$26();
                }
            });
            pair = TuplesKt.to(null, Boolean.FALSE);
        }
        ColorSource colorSource = (ColorSource) pair.component1();
        boolean zBooleanValue = ((Boolean) pair.component2()).booleanValue();
        if (colorSource == null) {
            return null;
        }
        return new Color(colorSource, zBooleanValue);
    }

    public final ElementLayoutParams createElementLayoutParams(Rendering.Phase.ViewComponent.Layout layout) {
        ElementLayoutParams.Builder builder = new ElementLayoutParams.Builder();
        if (layout == null) {
            return builder.build();
        }
        List<Rendering.Phase.ViewComponent.Layout.Constraint> constraintsList = layout.getConstraintsList();
        Intrinsics.checkNotNullExpressionValue(constraintsList, "layout.constraintsList");
        for (Rendering.Phase.ViewComponent.Layout.Constraint constraint : constraintsList) {
            final Rendering.Phase.ViewComponent.Layout.Constraint.Anchor sourceAnchor = constraint.getSourceAnchor();
            Rendering.Phase.ViewComponent.Layout.Constraint.Anchor targetAnchor = constraint.getTargetAnchor();
            String target = constraint.getTarget();
            Intrinsics.checkNotNullExpressionValue(target, "constraint.target");
            float value = (float) constraint.getValue();
            switch (sourceAnchor == null ? -1 : WhenMappings.$EnumSwitchMapping$0[sourceAnchor.ordinal()]) {
                case 1:
                    builder.setWidth(value);
                    builder.setWidthPercent((float) constraint.getMultiplier());
                    break;
                case 2:
                    builder.setHeight(value);
                    builder.setHeightPercent((float) constraint.getMultiplier());
                    break;
                case 3:
                    SideType sideType = AdaptiveRenderingParamsKt.toSideType(targetAnchor);
                    if (sideType != null) {
                        builder.setLeftSideBindParams(new SideBindParams(sideType, target));
                    }
                    builder.setMarginLeft(value);
                    break;
                case 4:
                    SideType sideType2 = AdaptiveRenderingParamsKt.toSideType(targetAnchor);
                    if (sideType2 != null) {
                        builder.setTopSideBindParams(new SideBindParams(sideType2, target));
                    }
                    builder.setMarginTop(value);
                    break;
                case 5:
                    SideType sideType3 = AdaptiveRenderingParamsKt.toSideType(targetAnchor);
                    if (sideType3 != null) {
                        builder.setRightSideBindParams(new SideBindParams(sideType3, target));
                    }
                    builder.setMarginRight(value);
                    break;
                case 6:
                    SideType sideType4 = AdaptiveRenderingParamsKt.toSideType(targetAnchor);
                    if (sideType4 != null) {
                        builder.setBottomSideBindParams(new SideBindParams(sideType4, target));
                    }
                    builder.setMarginBottom(value);
                    break;
                case 7:
                    SideType sideType5 = AdaptiveRenderingParamsKt.toSideType(targetAnchor);
                    if (sideType5 != null) {
                        builder.setCenterXSideBindParams(new SideBindParams(sideType5, target));
                    }
                    builder.setTranslationX(value);
                    break;
                case 8:
                    SideType sideType6 = AdaptiveRenderingParamsKt.toSideType(targetAnchor);
                    if (sideType6 != null) {
                        builder.setCenterYSideBindParams(new SideBindParams(sideType6, target));
                    }
                    builder.setTranslationY(value);
                    break;
                default:
                    Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda4
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return AdaptiveRenderingParams.createElementLayoutParams$lambda$18$lambda$17(sourceAnchor);
                        }
                    });
                    break;
            }
        }
        builder.setZIndex(layout.getZIndex());
        return builder.build();
    }

    public final EngagedClickParams createEngagedClickParams(List<RenderingFeature> featureList) {
        Object next;
        RenderingFeature.EngagedClickDetector.Configuration.VisualConfig visual;
        RenderingFeature.EngagedClickDetector engagedClickDetector;
        Intrinsics.checkNotNullParameter(featureList, "featureList");
        Iterator<T> it = featureList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            RenderingFeature renderingFeature = (RenderingFeature) next;
            if (renderingFeature.hasEngagedClickDetector() && renderingFeature.getEngagedClickDetector().hasConfiguration()) {
                break;
            }
        }
        RenderingFeature renderingFeature2 = (RenderingFeature) next;
        RenderingFeature.EngagedClickDetector.Configuration configuration = (renderingFeature2 == null || (engagedClickDetector = renderingFeature2.getEngagedClickDetector()) == null) ? null : engagedClickDetector.getConfiguration();
        if (configuration == null) {
            return null;
        }
        RenderingFeature.EngagedClickDetector.Configuration configuration2 = (configuration.hasVisual() && configuration.getVisual().getEnabled()) ? configuration : null;
        VisualConfig visualConfig = (configuration2 == null || (visual = configuration2.getVisual()) == null) ? null : new VisualConfig(visual.getDownscaleMaxSidePx(), visual.getDiffThreshold(), visual.getBaselineMultiplier());
        CreativeProfileInfo default_creative_profile_info = this.creativeProfileInfo;
        if (default_creative_profile_info == null) {
            default_creative_profile_info = CreativeProfileInfo.Companion.getDEFAULT_CREATIVE_PROFILE_INFO();
        }
        CreativeProfileInfo creativeProfileInfo = default_creative_profile_info;
        return new EngagedClickParams((long) configuration.getInteractionWindowMs(), visualConfig, creativeProfileInfo, this.engagedClickTrackingObject, creativeProfileInfo.getProfileSource() != ProfileSource.BID_ATTR_13);
    }

    public final EventParams createEventParams(Rendering.Phase.Event event) {
        EventType eventType;
        if (event == null || event == Rendering.Phase.Event.getDefaultInstance() || (eventType = AdaptiveRenderingParamsKt.toEventType(event.getName())) == null) {
            return null;
        }
        String source = event.getSource();
        Intrinsics.checkNotNullExpressionValue(source, "event.source");
        String permissionUrl = event.getPermissionUrl();
        List<Rendering.Phase.Event.TaskBucket> taskBucketsList = event.getTaskBucketsList();
        Intrinsics.checkNotNullExpressionValue(taskBucketsList, "event.taskBucketsList");
        return new EventParams(eventType, source, permissionUrl, AbstractC4224h.b(taskBucketsList));
    }

    public final Gradient createGradient(Rendering.Color.Gradient gradient) {
        if (gradient == null || gradient == Rendering.Color.Gradient.getDefaultInstance()) {
            return null;
        }
        final String type = gradient.getType();
        Intrinsics.checkNotNullExpressionValue(type, "gradient.type");
        GradientType gradientType = GradientType.Companion.get(type);
        if (gradientType == null) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda17
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createGradient$lambda$27(type);
                }
            });
            return null;
        }
        final String direction = gradient.getDirection();
        Intrinsics.checkNotNullExpressionValue(direction, "gradient.direction");
        GradientDirection gradientDirection = GradientDirection.Companion.get(direction);
        if (gradientDirection == null) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda18
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createGradient$lambda$28(direction);
                }
            });
            return null;
        }
        ProtocolStringList colorsList = gradient.getColorsList();
        Intrinsics.checkNotNullExpressionValue(colorsList, "gradient.colorsList");
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = colorsList.iterator();
        while (it.hasNext()) {
            Integer colorRGBASafely = ColorUtils.parseColorRGBASafely(it.next());
            if (colorRGBASafely != null) {
                arrayList.add(colorRGBASafely);
            }
        }
        if (arrayList.isEmpty()) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda19
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createGradient$lambda$30();
                }
            });
            return null;
        }
        if (arrayList.size() != colorsList.size()) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda20
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createGradient$lambda$31();
                }
            });
        }
        return new Gradient(gradientType, gradientDirection, arrayList);
    }

    public final Image createImage(Rendering.Image image) {
        Resource resourceCreateResource;
        if (image == null || image == Rendering.Image.getDefaultInstance() || (resourceCreateResource = createResource(image.getResource())) == null) {
            return null;
        }
        ScaleType scaleType = AdaptiveRenderingParamsKt.toScaleType(image.getScale());
        if (scaleType == null) {
            scaleType = ScaleType.None;
        }
        return new Image(scaleType, resourceCreateResource);
    }

    public final List<MeasurerFactory> createMeasurerFactoryList(List<Rendering.Phase.ViewComponent.Measurer> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        for (Rendering.Phase.ViewComponent.Measurer measurer : list) {
            String name = measurer.getName();
            Intrinsics.checkNotNullExpressionValue(name, "it.name");
            arrayList.add(new AdMeasurerFactory(name, measurer.getParametersMap()));
        }
        return arrayList;
    }

    public final Placeholder createPlaceholder(Rendering.Placeholder placeholder) {
        PlaceholderSource imagePlaceholderSource;
        if (placeholder == null || placeholder == Rendering.Placeholder.getDefaultInstance()) {
            return null;
        }
        if (placeholder.hasName()) {
            String name = placeholder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "placeholder.name");
            imagePlaceholderSource = new NamePlaceholderSource(name);
        } else if (placeholder.hasColor()) {
            Color colorCreateColor = createColor(placeholder.getColor());
            if (colorCreateColor == null) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda9
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createPlaceholder$lambda$34();
                    }
                });
                return null;
            }
            imagePlaceholderSource = new ColorPlaceholderSource(colorCreateColor);
        } else if (placeholder.hasImage()) {
            Image imageCreateImage = createImage(placeholder.getImage());
            if (imageCreateImage == null) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda10
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createPlaceholder$lambda$35();
                    }
                });
                return null;
            }
            imagePlaceholderSource = new ImagePlaceholderSource(imageCreateImage);
        } else {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda11
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdaptiveRenderingParams.createPlaceholder$lambda$36();
                }
            });
            imagePlaceholderSource = null;
        }
        if (imagePlaceholderSource == null) {
            return null;
        }
        return new Placeholder(imagePlaceholderSource);
    }

    public final Resource createResource(Rendering.Resource resource) {
        ResourceSource xmlResourceSource;
        if (resource == null || resource == Rendering.Resource.getDefaultInstance()) {
            return null;
        }
        if (resource.hasBase64()) {
            String base64 = resource.getBase64();
            Intrinsics.checkNotNullExpressionValue(base64, "resource.base64");
            xmlResourceSource = new Base64ResourceSource(base64);
        } else if (resource.hasUrls()) {
            ProtocolStringList urlsList = resource.getUrls().getUrlsList();
            Intrinsics.checkNotNullExpressionValue(urlsList, "resource.urls.urlsList");
            xmlResourceSource = new UrlResourceSource(urlsList);
        } else if (resource.hasUrl()) {
            String url = resource.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "resource.url");
            xmlResourceSource = new UrlResourceSource(url);
        } else {
            if (resource.hasPayload()) {
                Rendering.Resource.Payload payload = resource.getPayload();
                Intrinsics.checkNotNullExpressionValue(payload, "resource.payload");
                if (payload.hasHtml()) {
                    String html = payload.getHtml();
                    Intrinsics.checkNotNullExpressionValue(html, "payload.html");
                    xmlResourceSource = new HtmlResourceSource(html);
                } else if (payload.hasXml()) {
                    String xml = payload.getXml();
                    Intrinsics.checkNotNullExpressionValue(xml, "payload.xml");
                    xmlResourceSource = new XmlResourceSource(xml);
                } else {
                    Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda5
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return AdaptiveRenderingParams.createResource$lambda$32();
                        }
                    });
                }
            } else {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams$$ExternalSyntheticLambda6
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdaptiveRenderingParams.createResource$lambda$33();
                    }
                });
            }
            xmlResourceSource = null;
        }
        if (xmlResourceSource == null) {
            return null;
        }
        return new Resource(xmlResourceSource);
    }

    public final List<ScriptConfig> createScriptConfigs(List<Rendering.Phase.ViewComponent.ScriptConfig> scriptsList) {
        Intrinsics.checkNotNullParameter(scriptsList, "scriptsList");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(scriptsList, 10));
        for (Rendering.Phase.ViewComponent.ScriptConfig scriptConfig : scriptsList) {
            String scriptId = scriptConfig.getScriptId();
            int priority = scriptConfig.getPriority();
            String source = scriptConfig.getSource();
            boolean forMainFrameOnly = scriptConfig.getForMainFrameOnly();
            Rendering.Phase.ViewComponent.ScriptConfig.InjectTiming injectTiming = scriptConfig.getInjectTiming();
            int i = injectTiming == null ? -1 : WhenMappings.$EnumSwitchMapping$4[injectTiming.ordinal()];
            ScriptConfig.Type type = i != 1 ? i != 2 ? null : ScriptConfig.Type.DocumentEnd : ScriptConfig.Type.DocumentStart;
            Intrinsics.checkNotNullExpressionValue(scriptId, "scriptId");
            Intrinsics.checkNotNullExpressionValue(source, "source");
            arrayList.add(new ScriptConfig(scriptId, priority, type, forMainFrameOnly, source, null, 32, null));
        }
        return arrayList;
    }

    public final WatermarkParams createWatermarkParams(UnifiedMediationParams unifiedMediationParams, WatermarkConfiguration watermarkConfiguration) {
        WatermarkParams.Location location;
        if (watermarkConfiguration == null) {
            return null;
        }
        WatermarkAlgorithm algorithm = watermarkConfiguration.getAlgorithm();
        if ((algorithm == null ? -1 : WhenMappings.$EnumSwitchMapping$1[algorithm.ordinal()]) != 1) {
            return null;
        }
        WatermarkParams.Algorithm algorithm2 = WatermarkParams.Algorithm.RGB_STRIP;
        WatermarkPayloadType payloadType = watermarkConfiguration.getPayloadType();
        String stringOrNull = (payloadType == null ? -1 : WhenMappings.$EnumSwitchMapping$2[payloadType.ordinal()]) == 1 ? unifiedMediationParams.getStringOrNull("bidId") : unifiedMediationParams.getStringOrNull("creativeId");
        if (stringOrNull == null) {
            stringOrNull = "";
        }
        Integer colorRGBASafely = ColorUtils.parseColorRGBASafely(watermarkConfiguration.getBaseColorRgb());
        int iIntValue = colorRGBASafely != null ? colorRGBASafely.intValue() : -16777216;
        WatermarkLocation location2 = watermarkConfiguration.getLocation();
        switch (location2 != null ? WhenMappings.$EnumSwitchMapping$3[location2.ordinal()] : -1) {
            case 1:
                location = WatermarkParams.Location.TOP_LEFT;
                break;
            case 2:
                location = WatermarkParams.Location.TOP_CENTER;
                break;
            case 3:
                location = WatermarkParams.Location.TOP_RIGHT;
                break;
            case 4:
                location = WatermarkParams.Location.BOTTOM_LEFT;
                break;
            case 5:
                location = WatermarkParams.Location.BOTTOM_CENTER;
                break;
            case 6:
                location = WatermarkParams.Location.BOTTOM_RIGHT;
                break;
            default:
                location = WatermarkParams.Location.BOTTOM_LEFT;
                break;
        }
        return new WatermarkParams(algorithm2, stringOrNull, iIntValue, location);
    }

    public final AdParams getAdParams() {
        return this.adParams;
    }

    public boolean isValid(UnifiedAdCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.adParams != null) {
            return true;
        }
        BMError bMErrorNotFound = BMError.notFound("rendering_configuration");
        Intrinsics.checkNotNullExpressionValue(bMErrorNotFound, "notFound(KEY_RENDERING_CONFIGURATION)");
        callback.onAdLoadFailed(bMErrorNotFound);
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptiveRenderingParams(UnifiedMediationParams unifiedMediationParams, UnifiedAdCallback unifiedAdCallback) {
        super(unifiedMediationParams);
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        Object objectOrNull = unifiedMediationParams.getObjectOrNull("creativeProfileInfo");
        AdParams adParamsCreateAdParams = null;
        this.creativeProfileInfo = objectOrNull instanceof CreativeProfileInfo ? (CreativeProfileInfo) objectOrNull : null;
        this.engagedClickTrackingObject = unifiedAdCallback != null ? new EngagedClickTrackingObjectImpl(unifiedAdCallback) : null;
        Object objectOrNull2 = unifiedMediationParams.getObjectOrNull("rendering_configuration");
        if ((objectOrNull2 instanceof Rendering) && objectOrNull2 != Rendering.getDefaultInstance()) {
            Rendering rendering = (Rendering) objectOrNull2;
            adParamsCreateAdParams = createAdParams(rendering, VisibilityParams.Companion.getDefault(), createWatermarkParams(unifiedMediationParams, rendering.getWatermarkConfiguration()));
        }
        this.adParams = adParamsCreateAdParams;
    }
}
