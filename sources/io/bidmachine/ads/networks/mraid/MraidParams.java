package io.bidmachine.ads.networks.mraid;

import io.bidmachine.EngagedClickTrackingObjectImpl;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.internal.AbstractC4234s;
import io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.IabUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MraidParams extends UnifiedParams {
    public final CacheControl cacheControl;
    public final IabElementStyle closeableViewStyle;
    public final IabElementStyle countDownStyle;
    public final String creativeAdm;
    public final CreativeProfileInfo creativeProfileInfo;
    public final Long engagedClickInteractionWindowMs;
    public final int height;
    public final boolean omsdkEnabled;
    public final float placeholderTimeoutSec;
    public final int progressDuration;
    public final IabElementStyle progressStyle;
    public final boolean r1;
    public final boolean r2;
    public final int skipOffset;
    public final String storeUrl;
    public final boolean useNativeClose;
    public final int width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MraidParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        this.creativeAdm = unifiedMediationParams.getStringOrNull("creativeAdm");
        this.width = unifiedMediationParams.getInteger("width");
        this.height = unifiedMediationParams.getInteger("height");
        this.useNativeClose = unifiedMediationParams.getBoolean("useNativeClose");
        this.omsdkEnabled = unifiedMediationParams.getBoolean("omsdk_enabled", true) && AbstractC4234s.c();
        IabUtils iabUtils = IabUtils.INSTANCE;
        this.cacheControl = iabUtils.toCacheControl(unifiedMediationParams.getObjectOrNull("cacheControl"));
        this.placeholderTimeoutSec = unifiedMediationParams.getFloat("placeholderTimeoutSec");
        this.skipOffset = unifiedMediationParams.getInteger("skipOffset");
        this.r1 = unifiedMediationParams.getBoolean("r1");
        this.r2 = unifiedMediationParams.getBoolean("r2");
        this.storeUrl = unifiedMediationParams.getStringOrNull("store_url");
        this.progressDuration = unifiedMediationParams.getInteger("progress_duration");
        this.closeableViewStyle = iabUtils.toIabElementStyle(unifiedMediationParams.getObjectOrNull("close_button_control_asset"));
        this.countDownStyle = iabUtils.toIabElementStyle(unifiedMediationParams.getObjectOrNull("countdown_control_asset"));
        this.progressStyle = iabUtils.toIabElementStyle(unifiedMediationParams.getObjectOrNull("progress_control_asset"));
        Double doubleOrNull = unifiedMediationParams.getDoubleOrNull("engaged_click_interaction_window_ms");
        this.engagedClickInteractionWindowMs = doubleOrNull != null ? Long.valueOf((long) doubleOrNull.doubleValue()) : null;
        Object objectOrNull = unifiedMediationParams.getObjectOrNull("creativeProfileInfo");
        this.creativeProfileInfo = objectOrNull instanceof CreativeProfileInfo ? (CreativeProfileInfo) objectOrNull : null;
    }

    public final EngagedClickParams createEngagedClickParams(UnifiedAdCallback unifiedAdCallback) {
        Intrinsics.checkNotNullParameter(unifiedAdCallback, "unifiedAdCallback");
        Long l = this.engagedClickInteractionWindowMs;
        if (l == null) {
            return null;
        }
        long jLongValue = l.longValue();
        CreativeProfileInfo default_creative_profile_info = this.creativeProfileInfo;
        if (default_creative_profile_info == null) {
            default_creative_profile_info = CreativeProfileInfo.Companion.getDEFAULT_CREATIVE_PROFILE_INFO();
        }
        return new EngagedClickParams(jLongValue, null, default_creative_profile_info, new EngagedClickTrackingObjectImpl(unifiedAdCallback), false, 16, null);
    }

    public final CacheControl getCacheControl() {
        return this.cacheControl;
    }

    public final IabElementStyle getCloseableViewStyle() {
        return this.closeableViewStyle;
    }

    public final IabElementStyle getCountDownStyle() {
        return this.countDownStyle;
    }

    public final String getCreativeAdm() {
        return this.creativeAdm;
    }

    public final boolean getOmsdkEnabled() {
        return this.omsdkEnabled;
    }

    public final float getPlaceholderTimeoutSec() {
        return this.placeholderTimeoutSec;
    }

    public final int getProgressDuration() {
        return this.progressDuration;
    }

    public final IabElementStyle getProgressStyle() {
        return this.progressStyle;
    }

    public final boolean getR1() {
        return this.r1;
    }

    public final boolean getR2() {
        return this.r2;
    }

    public final int getSkipOffset() {
        return this.skipOffset;
    }

    public final String getStoreUrl() {
        return this.storeUrl;
    }

    public final boolean getUseNativeClose() {
        return this.useNativeClose;
    }

    public boolean isValid(UnifiedAdCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        String str = this.creativeAdm;
        if (str == null || str.length() == 0) {
            BMError bMErrorNotFound = BMError.notFound("creativeAdm");
            Intrinsics.checkNotNullExpressionValue(bMErrorNotFound, "notFound(KEY_CREATIVE_ADM)");
            callback.onAdLoadFailed(bMErrorNotFound);
            return false;
        }
        if (this.width == 0) {
            BMError bMErrorNotFound2 = BMError.notFound("width");
            Intrinsics.checkNotNullExpressionValue(bMErrorNotFound2, "notFound(KEY_WIDTH)");
            callback.onAdLoadFailed(bMErrorNotFound2);
            return false;
        }
        if (this.height != 0) {
            return true;
        }
        BMError bMErrorNotFound3 = BMError.notFound("height");
        Intrinsics.checkNotNullExpressionValue(bMErrorNotFound3, "notFound(KEY_HEIGHT)");
        callback.onAdLoadFailed(bMErrorNotFound3);
        return false;
    }
}
