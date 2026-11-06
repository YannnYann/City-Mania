package io.bidmachine.utils;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.BoolValue;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.BannerAdSize;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.sdk.GeometryMetric;
import io.bidmachine.protobuf.sdk.LifecycleMetric;
import io.bidmachine.protobuf.sdk.Measurement;
import io.bidmachine.protobuf.sdk.MetricRequirement;
import io.bidmachine.protobuf.sdk.OverlapMetric;
import io.bidmachine.protobuf.sdk.ViewabilityConfiguration;
import io.bidmachine.protobuf.sdk.ViewabilityRule;
import io.bidmachine.protobuf.sdk.VisibilityMetric;
import io.bidmachine.util.ColorUtils;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.viewabilitytracker.metric.Metric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityGeometryMetric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityLifecycleMetric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityOverlapMetric;
import io.bidmachine.util.viewabilitytracker.metric.ViewabilityVisibilityMetric;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityMeasurement;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ProtoUtilsKt {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[VisibilityMetric.VisibilityScope.values().length];
            try {
                iArr[VisibilityMetric.VisibilityScope.PARENT_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VisibilityMetric.VisibilityScope.SCREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VisibilityMetric.VisibilityScope.SAFE_AREA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[LifecycleMetric.LifecycleState.values().length];
            try {
                iArr2[LifecycleMetric.LifecycleState.HAS_WINDOW_FOCUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[OverlapMetric.OverlapScope.values().length];
            try {
                iArr3[OverlapMetric.OverlapScope.VIEW_SIBLINGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[OverlapMetric.OverlapScope.ALL_VIEWS.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[OverlapMetric.OverlapScope.WINDOWS.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public static final BMError checkBannerPlacement(Placement placement, BannerAdSize bannerAdSize) {
        Intrinsics.checkNotNullParameter(placement, "<this>");
        Intrinsics.checkNotNullParameter(bannerAdSize, "bannerAdSize");
        Placement.DisplayPlacement display = placement.getDisplay();
        Intrinsics.checkNotNullExpressionValue(display, "display");
        if (display == Placement.DisplayPlacement.getDefaultInstance()) {
            return BMError.incorrectContent("DisplayPlacement must not be a default instance");
        }
        if (isInterstitialPlacement(display)) {
            return BMError.incorrectContent("It's is not banner placement. 'Instl' parameter in placement - true");
        }
        int w = display.getW();
        int h = display.getH();
        if (bannerAdSize.isSuitable(w, h)) {
            return null;
        }
        return BMError.incorrectContent("Incorrect DisplayPlacement size. Current size - " + bannerAdSize.getWidth() + 'x' + bannerAdSize.getHeight() + ", placement size - " + w + 'x' + h);
    }

    public static final BMError checkInterstitialPlacement(Placement placement) {
        Intrinsics.checkNotNullParameter(placement, "<this>");
        if (isRewardedPlacement(placement)) {
            return BMError.incorrectContent("Rewarded placement used for interstitial placement");
        }
        Placement.DisplayPlacement display = placement.getDisplay();
        Intrinsics.checkNotNullExpressionValue(display, "display");
        if ((display == Placement.DisplayPlacement.getDefaultInstance() || !isInterstitialPlacement(display)) && placement.getVideo() == Placement.VideoPlacement.getDefaultInstance()) {
            return BMError.incorrectContent("DisplayPlacement must have 'Instl' parameter - true. Or VideoPlacement must not be a default instance");
        }
        return null;
    }

    public static final BMError checkNativePlacement(Placement placement) {
        Intrinsics.checkNotNullParameter(placement, "<this>");
        if (placement.getDisplay().getNativefmt().getAssetCount() <= 0) {
            return BMError.incorrectContent("Native assets not found");
        }
        return null;
    }

    public static final BMError checkRewardedPlacement(Placement placement) {
        Intrinsics.checkNotNullParameter(placement, "<this>");
        if (isRewardedPlacement(placement)) {
            return null;
        }
        return BMError.incorrectContent("It's is not rewarded placement. 'Reward' parameter in placement must be true");
    }

    public static final AdExtension findFirstAdExtension(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "<this>");
        int extProtoCount = ad.getExtProtoCount();
        for (int i = 0; i < extProtoCount; i++) {
            try {
                Any extProto = ad.getExtProto(i);
                Intrinsics.checkNotNullExpressionValue(extProto, "getExtProto(i)");
                if (extProto.is(AdExtension.class)) {
                    return (AdExtension) extProto.unpack(AdExtension.class);
                }
                continue;
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
        return null;
    }

    public static final String getString(Struct struct, String key) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Value value = getValue(struct, key);
        if (value != null) {
            return getStringWithCheck(value);
        }
        return null;
    }

    public static final String getStringWithCheck(Value value) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        if (value.hasStringValue()) {
            return value.getStringValue();
        }
        return null;
    }

    public static final Value getValue(Struct struct, String key) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return struct.getFieldsMap().get(key);
    }

    public static final boolean isInterstitialPlacement(Placement.DisplayPlacement displayPlacement) {
        return displayPlacement.getInstl();
    }

    public static final boolean isRewardedPlacement(Placement placement) {
        return placement.getReward();
    }

    public static final <T> ListValue mapNotNullToProtoListValue(List<? extends T> list, Function1<? super T, Value> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        ListValue.Builder builderNewBuilder = ListValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Value valueInvoke = transform.invoke(it.next());
            if (valueInvoke != null) {
                builderNewBuilder.addValues(valueInvoke);
            }
        }
        ListValue listValueBuild = builderNewBuilder.build();
        Intrinsics.checkNotNullExpressionValue(listValueBuild, "listValueBuilder.build()");
        return listValueBuild;
    }

    public static final Any pack(Message message) {
        Intrinsics.checkNotNullParameter(message, "<this>");
        Any anyPack = Any.pack(message);
        Intrinsics.checkNotNullExpressionValue(anyPack, "pack(this)");
        return anyPack;
    }

    public static final Struct.Builder putField(Struct.Builder builder, String key, String value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, toProtoValue(value));
        return builder;
    }

    public static final IabElementStyle toIabElementStyle(AdExtension.ControlAsset controlAsset) {
        Intrinsics.checkNotNullParameter(controlAsset, "<this>");
        try {
            IabElementStyle iabElementStyle = new IabElementStyle();
            iabElementStyle.setMargin(controlAsset.getMargin());
            iabElementStyle.setPadding(controlAsset.getPadding());
            iabElementStyle.setContent(controlAsset.getContent());
            iabElementStyle.setFillColor(ColorUtils.parseColorARGBSafely(controlAsset.getFill()));
            iabElementStyle.setFontStyle(Integer.valueOf(controlAsset.getFontStyle()));
            iabElementStyle.setWidth(Integer.valueOf(controlAsset.getWidth()));
            iabElementStyle.setHeight(Integer.valueOf(controlAsset.getHeight()));
            iabElementStyle.setHideAfter(Float.valueOf(controlAsset.getHideafter()));
            iabElementStyle.setHorizontalPosition(Utils.parseHorizontalPosition(controlAsset.getX()));
            iabElementStyle.setVerticalPosition(Utils.parseVerticalPosition(controlAsset.getY()));
            iabElementStyle.setOpacity(Float.valueOf(controlAsset.getOpacity()));
            iabElementStyle.setOutlined(Boolean.valueOf(controlAsset.getOutlined()));
            iabElementStyle.setStrokeColor(ColorUtils.parseColorARGBSafely(controlAsset.getStroke()));
            iabElementStyle.setStrokeWidth(Float.valueOf(controlAsset.getStrokeWidth()));
            iabElementStyle.setStyle(controlAsset.getStyle());
            iabElementStyle.setVisible(Boolean.valueOf(controlAsset.getVisible()));
            return iabElementStyle;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final ListValue.Builder toListValueBuilderOrNull(List<?> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ListValue.Builder builderNewBuilder = ListValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            Value.Builder valueBuilderOrNull = toValueBuilderOrNull(it.next());
            if (valueBuilderOrNull != null) {
                builderNewBuilder.addValues(valueBuilderOrNull);
            }
        }
        return builderNewBuilder;
    }

    public static final Metric toMetricOrNull(final MetricRequirement metricRequirement) {
        Intrinsics.checkNotNullParameter(metricRequirement, "<this>");
        if (metricRequirement.hasGeometry()) {
            GeometryMetric geometry = metricRequirement.getGeometry();
            Intrinsics.checkNotNullExpressionValue(geometry, "geometry");
            return toViewabilityGeometryMetric(geometry);
        }
        if (metricRequirement.hasVisibility()) {
            VisibilityMetric visibility = metricRequirement.getVisibility();
            Intrinsics.checkNotNullExpressionValue(visibility, "visibility");
            return toViewabilityVisibilityMetricOrNull(visibility);
        }
        if (metricRequirement.hasLifecycle()) {
            LifecycleMetric lifecycle = metricRequirement.getLifecycle();
            Intrinsics.checkNotNullExpressionValue(lifecycle, "lifecycle");
            return toViewabilityLifecycleMetricOrNull(lifecycle);
        }
        if (!metricRequirement.hasOverlap()) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return ProtoUtilsKt.toMetricOrNull$lambda$22(metricRequirement);
                }
            });
            return null;
        }
        OverlapMetric overlap = metricRequirement.getOverlap();
        Intrinsics.checkNotNullExpressionValue(overlap, "overlap");
        return toViewabilityOverlapMetricOrNull(overlap);
    }

    public static final String toMetricOrNull$lambda$22(MetricRequirement this_toMetricOrNull) {
        Intrinsics.checkNotNullParameter(this_toMetricOrNull, "$this_toMetricOrNull");
        return "Unsupported Metric - " + this_toMetricOrNull.getMetricCase().name() + ", it must be GeometryMetric or VisibilityMetric or LifecycleMetric or OverlapMetric";
    }

    public static final BoolValue toProtoBooleanValue(boolean z) {
        BoolValue boolValueBuild = toProtoBooleanValueBuilder(z).build();
        Intrinsics.checkNotNullExpressionValue(boolValueBuild, "toProtoBooleanValueBuilder().build()");
        return boolValueBuild;
    }

    public static final BoolValue.Builder toProtoBooleanValueBuilder(boolean z) {
        BoolValue.Builder value = BoolValue.newBuilder().setValue(z);
        Intrinsics.checkNotNullExpressionValue(value, "newBuilder().setValue(this)");
        return value;
    }

    public static final StringValue toProtoStringValue(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        StringValue stringValueBuild = toProtoStringValueBuilder(str).build();
        Intrinsics.checkNotNullExpressionValue(stringValueBuild, "toProtoStringValueBuilder().build()");
        return stringValueBuild;
    }

    public static final StringValue.Builder toProtoStringValueBuilder(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        StringValue.Builder value = StringValue.newBuilder().setValue(str);
        Intrinsics.checkNotNullExpressionValue(value, "newBuilder().setValue(this)");
        return value;
    }

    public static final Value toProtoValue(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Value valueBuild = toProtoValueBuilder(str).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "toProtoValueBuilder().build()");
        return valueBuild;
    }

    public static final Value.Builder toProtoValueBuilder(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Value.Builder stringValue = Value.newBuilder().setStringValue(str);
        Intrinsics.checkNotNullExpressionValue(stringValue, "newBuilder()\n        .setStringValue(this)");
        return stringValue;
    }

    public static final Struct.Builder toStructBuilderOrNull(Map<?, ?> map) {
        Value.Builder valueBuilderOrNull;
        if (map == null || map.isEmpty()) {
            return null;
        }
        Struct.Builder builderNewBuilder = Struct.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key != null) {
                String string = key.toString();
                if (string.length() != 0 && (valueBuilderOrNull = toValueBuilderOrNull(entry.getValue())) != null) {
                    builderNewBuilder.putFields(string, valueBuilderOrNull.build());
                }
            }
        }
        return builderNewBuilder;
    }

    public static final Value.Builder toValueBuilderOrNull(Object obj) {
        Struct.Builder structBuilderOrNull;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Value) {
            return ((Value) obj).toBuilder();
        }
        if (obj instanceof Value.Builder) {
            return (Value.Builder) obj;
        }
        if (obj instanceof String) {
            return toProtoValueBuilder((String) obj);
        }
        if (obj instanceof Number) {
            return toProtoValueBuilder((Number) obj);
        }
        if (obj instanceof Boolean) {
            return toProtoValueBuilder(((Boolean) obj).booleanValue());
        }
        if (obj instanceof List) {
            ListValue.Builder listValueBuilderOrNull = toListValueBuilderOrNull((List) obj);
            if (listValueBuilderOrNull != null) {
                return toProtoValueBuilder(listValueBuilderOrNull);
            }
            return null;
        }
        if (!(obj instanceof Map) || (structBuilderOrNull = toStructBuilderOrNull((Map) obj)) == null) {
            return null;
        }
        return toProtoValueBuilder(structBuilderOrNull);
    }

    public static final Value toValueOrNull(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Value) {
            return (Value) obj;
        }
        if (obj instanceof Value.Builder) {
            return ((Value.Builder) obj).build();
        }
        Value.Builder valueBuilderOrNull = toValueBuilderOrNull(obj);
        if (valueBuilderOrNull != null) {
            return valueBuilderOrNull.build();
        }
        return null;
    }

    public static final ViewabilityGeometryMetric toViewabilityGeometryMetric(GeometryMetric geometryMetric) {
        Intrinsics.checkNotNullParameter(geometryMetric, "<this>");
        return new ViewabilityGeometryMetric(geometryMetric.getVisible(), geometryMetric.hasMinAlpha() ? Float.valueOf((float) geometryMetric.getMinAlpha()) : null, geometryMetric.hasMinWidth() ? Float.valueOf(geometryMetric.getMinWidth()) : null, geometryMetric.hasMinHeight() ? Float.valueOf(geometryMetric.getMinHeight()) : null);
    }

    public static final ViewabilityLifecycleMetric toViewabilityLifecycleMetricOrNull(LifecycleMetric lifecycleMetric) {
        ArrayList arrayList;
        ViewabilityLifecycleMetric.State state;
        Intrinsics.checkNotNullParameter(lifecycleMetric, "<this>");
        List<LifecycleMetric.LifecycleState> requiredStatesList = lifecycleMetric.getRequiredStatesList();
        boolean z = true;
        if (requiredStatesList != null) {
            arrayList = new ArrayList();
            for (final LifecycleMetric.LifecycleState lifecycleState : requiredStatesList) {
                if ((lifecycleState == null ? -1 : WhenMappings.$EnumSwitchMapping$1[lifecycleState.ordinal()]) == 1) {
                    state = ViewabilityLifecycleMetric.State.HAS_WINDOW_FOCUS;
                } else {
                    Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda3
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return ProtoUtilsKt.toViewabilityLifecycleMetricOrNull$lambda$25$lambda$24(lifecycleState);
                        }
                    });
                    state = null;
                }
                if (state != null) {
                    arrayList.add(state);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            z = false;
        }
        if (z) {
            return null;
        }
        return new ViewabilityLifecycleMetric(arrayList);
    }

    public static final String toViewabilityLifecycleMetricOrNull$lambda$25$lambda$24(LifecycleMetric.LifecycleState lifecycleState) {
        return "Unsupported LifecycleState - " + lifecycleState.name();
    }

    public static final ViewabilityMeasurement toViewabilityMeasurement(Measurement measurement) {
        Intrinsics.checkNotNullParameter(measurement, "<this>");
        return new ViewabilityMeasurement(measurement.getCount(), measurement.getIntervalMs(), measurement.hasFailureTimeoutMs() ? Long.valueOf(measurement.getFailureTimeoutMs()) : null);
    }

    public static final ViewabilityOverlapMetric toViewabilityOverlapMetricOrNull(OverlapMetric overlapMetric) {
        ViewabilityOverlapMetric.Scope scope;
        Intrinsics.checkNotNullParameter(overlapMetric, "<this>");
        final OverlapMetric.OverlapScope scope2 = overlapMetric.getScope();
        Intrinsics.checkNotNullExpressionValue(scope2, "scope");
        int i = WhenMappings.$EnumSwitchMapping$2[scope2.ordinal()];
        if (i == 1) {
            scope = ViewabilityOverlapMetric.Scope.VIEW_SIBLINGS;
        } else if (i == 2) {
            scope = ViewabilityOverlapMetric.Scope.ALL_VIEWS;
        } else {
            if (i != 3) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda2
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return ProtoUtilsKt.toViewabilityOverlapMetricOrNull$lambda$26(scope2);
                    }
                });
                return null;
            }
            scope = ViewabilityOverlapMetric.Scope.WINDOWS;
        }
        return new ViewabilityOverlapMetric(scope, (float) overlapMetric.getMaxOverlapPercentage());
    }

    public static final String toViewabilityOverlapMetricOrNull$lambda$26(OverlapMetric.OverlapScope overlapScope) {
        Intrinsics.checkNotNullParameter(overlapScope, "$overlapScope");
        return "Unsupported OverlapScope - " + overlapScope.name();
    }

    public static final ViewabilityTrackerParams toViewabilityTrackerParams(ViewabilityConfiguration viewabilityConfiguration) {
        Intrinsics.checkNotNullParameter(viewabilityConfiguration, "<this>");
        if (viewabilityConfiguration == ViewabilityConfiguration.getDefaultInstance()) {
            return null;
        }
        List<ViewabilityRule> rulesList = viewabilityConfiguration.getRulesList();
        Intrinsics.checkNotNullExpressionValue(rulesList, "rulesList");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(rulesList, 10));
        for (ViewabilityRule viewabilityRule : rulesList) {
            ActionEvent actionEvent = new ActionEvent(viewabilityRule.getEvent(), viewabilityRule.getBillable());
            Measurement measurement = viewabilityRule.getMeasurement();
            Intrinsics.checkNotNullExpressionValue(measurement, "rule.measurement");
            ViewabilityMeasurement viewabilityMeasurement = toViewabilityMeasurement(measurement);
            List<MetricRequirement> requiredMetricsList = viewabilityRule.getRequiredMetricsList();
            Intrinsics.checkNotNullExpressionValue(requiredMetricsList, "rule.requiredMetricsList");
            List<MetricRequirement> listSortedWith = CollectionsKt___CollectionsKt.sortedWith(requiredMetricsList, new Comparator() { // from class: io.bidmachine.utils.ProtoUtilsKt$toViewabilityTrackerParams$lambda$20$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((MetricRequirement) t).getMeasurementIndex()), Integer.valueOf(((MetricRequirement) t2).getMeasurementIndex()));
                }
            });
            ArrayList arrayList2 = new ArrayList();
            for (MetricRequirement metricRequirement : listSortedWith) {
                Intrinsics.checkNotNullExpressionValue(metricRequirement, "metricRequirement");
                Metric metricOrNull = toMetricOrNull(metricRequirement);
                if (metricOrNull != null) {
                    arrayList2.add(metricOrNull);
                }
            }
            arrayList.add(new io.bidmachine.util.viewabilitytracker.model.ViewabilityRule(actionEvent, viewabilityMeasurement, arrayList2));
        }
        return new ViewabilityTrackerParams(arrayList);
    }

    public static final ViewabilityVisibilityMetric toViewabilityVisibilityMetricOrNull(VisibilityMetric visibilityMetric) {
        ViewabilityVisibilityMetric.Scope scope;
        Intrinsics.checkNotNullParameter(visibilityMetric, "<this>");
        final VisibilityMetric.VisibilityScope scope2 = visibilityMetric.getScope();
        Intrinsics.checkNotNullExpressionValue(scope2, "scope");
        int i = WhenMappings.$EnumSwitchMapping$0[scope2.ordinal()];
        if (i == 1) {
            scope = ViewabilityVisibilityMetric.Scope.PARENT_VIEW;
        } else if (i == 2) {
            scope = ViewabilityVisibilityMetric.Scope.SCREEN;
        } else {
            if (i != 3) {
                Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.ProtoUtilsKt$$ExternalSyntheticLambda1
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return ProtoUtilsKt.toViewabilityVisibilityMetricOrNull$lambda$23(scope2);
                    }
                });
                return null;
            }
            scope = ViewabilityVisibilityMetric.Scope.SAFE_AREA;
        }
        return new ViewabilityVisibilityMetric(scope, (float) visibilityMetric.getMinVisiblePercentage());
    }

    public static final String toViewabilityVisibilityMetricOrNull$lambda$23(VisibilityMetric.VisibilityScope visibilityScope) {
        Intrinsics.checkNotNullParameter(visibilityScope, "$visibilityScope");
        return "Unsupported VisibilityScope - " + visibilityScope.name();
    }

    public static final Any pack(Message.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Message messageBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(messageBuild, "build()");
        return pack(messageBuild);
    }

    public static final Struct.Builder putField(Struct.Builder builder, String key, Number value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, toProtoValue(value));
        return builder;
    }

    public static final Value toProtoValue(Number number) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Value valueBuild = toProtoValueBuilder(number).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "toProtoValueBuilder().build()");
        return valueBuild;
    }

    public static final Value.Builder toProtoValueBuilder(boolean z) {
        Value.Builder boolValue = Value.newBuilder().setBoolValue(z);
        Intrinsics.checkNotNullExpressionValue(boolValue, "newBuilder()\n        .setBoolValue(this)");
        return boolValue;
    }

    public static final Struct.Builder putField(Struct.Builder builder, String key, Struct value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, toProtoValue(value));
        return builder;
    }

    public static final Value toProtoValue(Struct struct) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Value valueBuild = toProtoValueBuilder(struct).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "toProtoValueBuilder().build()");
        return valueBuild;
    }

    public static final Value toProtoValue(Struct.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Value valueBuild = toProtoValueBuilder(builder).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "toProtoValueBuilder().build()");
        return valueBuild;
    }

    public static final Value.Builder toProtoValueBuilder(Number number) {
        Intrinsics.checkNotNullParameter(number, "<this>");
        Value.Builder builderNewBuilder = Value.newBuilder();
        Double doubleOrDefault$default = UtilsKt.toDoubleOrDefault$default(number, null, 1, null);
        Value.Builder numberValue = builderNewBuilder.setNumberValue(doubleOrDefault$default != null ? doubleOrDefault$default.doubleValue() : number.doubleValue());
        Intrinsics.checkNotNullExpressionValue(numberValue, "newBuilder()\n        .se…rDefault() ?: toDouble())");
        return numberValue;
    }

    public static final Struct.Builder putField(Struct.Builder builder, String key, ListValue value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, toProtoValue(value));
        return builder;
    }

    public static final Value toProtoValue(ListValue listValue) {
        Intrinsics.checkNotNullParameter(listValue, "<this>");
        Value valueBuild = toProtoValueBuilder(listValue).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "toProtoValueBuilder().build()");
        return valueBuild;
    }

    public static final Value.Builder toProtoValueBuilder(Struct struct) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Value.Builder structValue = Value.newBuilder().setStructValue(struct);
        Intrinsics.checkNotNullExpressionValue(structValue, "newBuilder()\n        .setStructValue(this)");
        return structValue;
    }

    public static final Value.Builder toProtoValueBuilder(Struct.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Value.Builder structValue = Value.newBuilder().setStructValue(builder);
        Intrinsics.checkNotNullExpressionValue(structValue, "newBuilder()\n        .setStructValue(this)");
        return structValue;
    }

    public static final Value.Builder toProtoValueBuilder(ListValue listValue) {
        Intrinsics.checkNotNullParameter(listValue, "<this>");
        Value.Builder listValue2 = Value.newBuilder().setListValue(listValue);
        Intrinsics.checkNotNullExpressionValue(listValue2, "newBuilder()\n        .setListValue(this)");
        return listValue2;
    }

    public static final Value.Builder toProtoValueBuilder(ListValue.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Value.Builder listValue = Value.newBuilder().setListValue(builder);
        Intrinsics.checkNotNullExpressionValue(listValue, "newBuilder()\n        .setListValue(this)");
        return listValue;
    }
}
