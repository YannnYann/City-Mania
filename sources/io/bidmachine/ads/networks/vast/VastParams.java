package io.bidmachine.ads.networks.vast;

import io.bidmachine.iab.CacheControl;
import io.bidmachine.internal.AbstractC4234s;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.IabUtils;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VastParams extends UnifiedParams {
    public final CacheControl cacheControl;
    public final int companionSkipOffset;
    public final String creativeAdm;
    public final boolean omsdkEnabled;
    public final float placeholderTimeoutSec;
    public final int skipOffset;
    public final boolean useNativeClose;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        this.creativeAdm = unifiedMediationParams.getStringOrNull("creativeAdm");
        this.cacheControl = IabUtils.INSTANCE.toCacheControl(unifiedMediationParams.getObjectOrNull("cacheControl"));
        this.placeholderTimeoutSec = unifiedMediationParams.getFloat("placeholderTimeoutSec");
        this.skipOffset = unifiedMediationParams.getInteger("skipOffset");
        this.companionSkipOffset = unifiedMediationParams.getInteger("companionSkipOffset");
        this.useNativeClose = unifiedMediationParams.getBoolean("useNativeClose");
        this.omsdkEnabled = unifiedMediationParams.getBoolean("omsdk_enabled", true) && AbstractC4234s.c();
    }

    public final CacheControl getCacheControl() {
        return this.cacheControl;
    }

    public final int getCompanionSkipOffset() {
        return this.companionSkipOffset;
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

    public final int getSkipOffset() {
        return this.skipOffset;
    }

    public final boolean getUseNativeClose() {
        return this.useNativeClose;
    }

    public boolean isValid(UnifiedAdCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        String str = this.creativeAdm;
        if (str != null && str.length() != 0) {
            return true;
        }
        BMError bMErrorNotFound = BMError.notFound("creativeAdm");
        Intrinsics.checkNotNullExpressionValue(bMErrorNotFound, "notFound(KEY_CREATIVE_ADM)");
        callback.onAdLoadFailed(bMErrorNotFound);
        return false;
    }
}
