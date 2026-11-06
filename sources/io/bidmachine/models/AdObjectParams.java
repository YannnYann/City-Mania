package io.bidmachine.models;

import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.TrackEventType;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.CreativeLoadingMethod;
import io.bidmachine.protobuf.rendering.Rendering;
import io.bidmachine.protobuf.sdk.ViewabilityConfiguration;
import io.bidmachine.unified.AdObjectMediationParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.util.viewabilitytracker.model.ViewabilityTrackerParams;
import io.bidmachine.utils.ProtoUtils;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AdObjectParams {
    public final Map<TrackEventType, List<String>> trackUrls;
    public final AdObjectMediationParams unifiedMediationParams;
    public final ViewabilityTrackerParams viewabilityTrackerParams;

    public AdObjectParams(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.trackUrls = new EnumMap(TrackEventType.class);
        this.unifiedMediationParams = new AdObjectMediationParams();
        AdExtension adExtensionFindFirstAdExtension = ProtoUtilsKt.findFirstAdExtension(ad);
        if (adExtensionFindFirstAdExtension != null) {
            prepareExtensions(adExtensionFindFirstAdExtension);
            ViewabilityConfiguration viewabilityConfiguration = adExtensionFindFirstAdExtension.getViewabilityConfiguration();
            Intrinsics.checkNotNullExpressionValue(viewabilityConfiguration, "adExtension.viewabilityConfiguration");
            this.viewabilityTrackerParams = ProtoUtilsKt.toViewabilityTrackerParams(viewabilityConfiguration);
        } else {
            this.viewabilityTrackerParams = null;
        }
        Map<String, Value> fieldsMap = ad.getExt().getFieldsMap();
        Intrinsics.checkNotNullExpressionValue(fieldsMap, "ad.ext.fieldsMap");
        prepareExtensions(fieldsMap);
        Map<String, Object> data = getData();
        String id = ad.getId();
        Intrinsics.checkNotNullExpressionValue(id, "ad.id");
        data.put("creativeId", id);
        getData().put("creativeProfileInfo", AdObjectParamsKt.classifyCreativeProfile(ad));
    }

    public final void addEvent(TrackEventType trackEventType, String str) {
        Intrinsics.checkNotNullParameter(trackEventType, "trackEventType");
        ProtoUtils.addEvent(this.trackUrls, trackEventType, str);
    }

    public final Map<String, Object> getData() {
        Map<String, Object> params = this.unifiedMediationParams.getParams();
        Intrinsics.checkNotNullExpressionValue(params, "unifiedMediationParams.params");
        return params;
    }

    public final int getHeight() {
        return getMediationParams().getInteger("height");
    }

    public final UnifiedMediationParams getMediationParams() {
        return this.unifiedMediationParams;
    }

    public final Map<TrackEventType, List<String>> getTrackUrls() {
        return this.trackUrls;
    }

    public final int getWidth() {
        return getMediationParams().getInteger("width");
    }

    public abstract boolean isValid();

    public final void prepareEvents(List<Ad.Event> list) {
        ProtoUtils.prepareEvents(this.trackUrls, list);
    }

    public final void prepareExtensions(AdExtension adExtension) {
        Intrinsics.checkNotNullParameter(adExtension, "adExtension");
        prepareEvents(adExtension.getEventList());
        Map<String, Object> data = getData();
        data.put("useNativeClose", Boolean.valueOf(adExtension.getUseNativeClose()));
        CreativeLoadingMethod creativeLoadingMethod = adExtension.getCreativeLoadingMethod();
        Intrinsics.checkNotNullExpressionValue(creativeLoadingMethod, "adExtension.creativeLoadingMethod");
        data.put("cacheControl", creativeLoadingMethod);
        data.put("placeholderTimeoutSec", Float.valueOf(adExtension.getPlaceholderTimeout()));
        data.put("skipOffset", Integer.valueOf(adExtension.getSkipoffset()));
        data.put("companionSkipOffset", Integer.valueOf(adExtension.getCompanionSkipoffset()));
        data.put("r1", Boolean.valueOf(adExtension.getR1()));
        data.put("r2", Boolean.valueOf(adExtension.getR2()));
        String storeUrl = adExtension.getStoreUrl();
        Intrinsics.checkNotNullExpressionValue(storeUrl, "adExtension.storeUrl");
        data.put("store_url", storeUrl);
        data.put("progress_duration", Integer.valueOf(adExtension.getProgressDuration()));
        AdExtension.ControlAsset closeButton = adExtension.getCloseButton();
        if (closeButton != null && closeButton != AdExtension.ControlAsset.getDefaultInstance()) {
            data.put("close_button_control_asset", closeButton);
        }
        AdExtension.ControlAsset countdown = adExtension.getCountdown();
        if (countdown != null && countdown != AdExtension.ControlAsset.getDefaultInstance()) {
            data.put("countdown_control_asset", countdown);
        }
        AdExtension.ControlAsset progress = adExtension.getProgress();
        if (progress != null && progress != AdExtension.ControlAsset.getDefaultInstance()) {
            data.put("progress_control_asset", progress);
        }
        Rendering renderingConfiguration = adExtension.getRenderingConfiguration();
        if (renderingConfiguration == null || renderingConfiguration == Rendering.getDefaultInstance()) {
            return;
        }
        data.put("rendering_configuration", renderingConfiguration);
    }

    public final void setHeight(int i) {
        getData().put("height", Integer.valueOf(i));
    }

    public final void setWidth(int i) {
        getData().put("width", Integer.valueOf(i));
    }

    public final void prepareExtensions(Map<String, Value> extensionMap) {
        Intrinsics.checkNotNullParameter(extensionMap, "extensionMap");
        Map<String, Object> data = getData();
        Value value = extensionMap.get("omsdk_enabled");
        if (value != null) {
            data.put("omsdk_enabled", Boolean.valueOf(value.getBoolValue()));
        }
        Value value2 = extensionMap.get("engaged_click_interaction_window_ms");
        if (value2 != null) {
            data.put("engaged_click_interaction_window_ms", Double.valueOf(value2.getNumberValue()));
        }
    }
}
