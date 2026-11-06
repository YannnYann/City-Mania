package io.bidmachine.ads.networks.nast;

import com.ironsource.C3522b4;
import io.bidmachine.Function;
import io.bidmachine.LabelData;
import io.bidmachine.MediaAssetType;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.internal.C4227k;
import io.bidmachine.nativead.NativeAdRequestParameters;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import io.bidmachine.unified.UnifiedParams;
import io.bidmachine.utils.BMError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class NastParams extends UnifiedParams {
    public final LabelData adLabelData;
    public final String callToAction;
    public final String clickUrl;
    public final String description;
    public final C4227k disclaimerData;
    public final String iconUrl;
    public final String imageUrl;
    public final PrivacySheetData privacySheetData;
    public final Float rating;
    public final String title;
    public final String videoAdm;
    public final String videoUrl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NastParams(UnifiedMediationParams unifiedMediationParams) {
        super(unifiedMediationParams);
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        this.title = unifiedMediationParams.getStringOrNull(C3522b4.i.D0);
        this.description = unifiedMediationParams.getStringOrNull("description");
        this.callToAction = unifiedMediationParams.getStringOrNull(C3522b4.i.G0);
        this.rating = unifiedMediationParams.getFloatOrNull("rating");
        this.iconUrl = unifiedMediationParams.getStringOrNull("iconUrl");
        this.imageUrl = unifiedMediationParams.getStringOrNull("imageUrl");
        this.videoUrl = unifiedMediationParams.getStringOrNull("videoUrl");
        this.videoAdm = unifiedMediationParams.getStringOrNull("videoAdm");
        this.clickUrl = unifiedMediationParams.getStringOrNull("clickUrl");
        this.adLabelData = (LabelData) unifiedMediationParams.getOrNullSafely("adLabel", new Function() { // from class: io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda0
            @Override // io.bidmachine.Function
            public final Object apply(Object obj) {
                return NastParams.adLabelData$lambda$0(obj);
            }
        });
        this.privacySheetData = (PrivacySheetData) unifiedMediationParams.getOrNullSafely("privacySheet", new Function() { // from class: io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda1
            @Override // io.bidmachine.Function
            public final Object apply(Object obj) {
                return NastParams.privacySheetData$lambda$1(obj);
            }
        });
        this.disclaimerData = (C4227k) unifiedMediationParams.getOrNullSafely("disclaimer", new Function() { // from class: io.bidmachine.ads.networks.nast.NastParams$$ExternalSyntheticLambda2
            @Override // io.bidmachine.Function
            public final Object apply(Object obj) {
                return NastParams.disclaimerData$lambda$2(obj);
            }
        });
    }

    public static final LabelData adLabelData$lambda$0(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof LabelData) {
            return (LabelData) it;
        }
        return null;
    }

    public static final C4227k disclaimerData$lambda$2(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof C4227k) {
            return (C4227k) it;
        }
        return null;
    }

    public static final PrivacySheetData privacySheetData$lambda$1(Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it instanceof PrivacySheetData) {
            return (PrivacySheetData) it;
        }
        return null;
    }

    public final LabelData getAdLabelData() {
        return this.adLabelData;
    }

    public final String getCallToAction() {
        return this.callToAction;
    }

    public final String getClickUrl() {
        return this.clickUrl;
    }

    public final String getDescription() {
        return this.description;
    }

    public final C4227k getDisclaimerData() {
        return this.disclaimerData;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final PrivacySheetData getPrivacySheetData() {
        return this.privacySheetData;
    }

    public final Float getRating() {
        return this.rating;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getVideoAdm() {
        return this.videoAdm;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public boolean isValid(UnifiedAdCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        String str = this.title;
        if (str == null || str.length() == 0) {
            BMError bMErrorNotFound = BMError.notFound(C3522b4.i.D0);
            Intrinsics.checkNotNullExpressionValue(bMErrorNotFound, "notFound(KEY_TITLE)");
            callback.onAdLoadFailed(bMErrorNotFound);
            return false;
        }
        String str2 = this.callToAction;
        if (str2 != null && str2.length() != 0) {
            return true;
        }
        BMError bMErrorNotFound2 = BMError.notFound(C3522b4.i.G0);
        Intrinsics.checkNotNullExpressionValue(bMErrorNotFound2, "notFound(KEY_CTA)");
        callback.onAdLoadFailed(bMErrorNotFound2);
        return false;
    }

    public final boolean isValid(UnifiedNativeAdRequestParams adRequestParams, UnifiedAdCallback callback) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!isValid(callback)) {
            return false;
        }
        NativeAdRequestParameters adRequestParameters = adRequestParams.getAdRequestParameters();
        Intrinsics.checkNotNullExpressionValue(adRequestParameters, "adRequestParams.getAdRequestParameters()");
        if (adRequestParameters.isValidateAssets() && adRequestParameters.containsAssetType(MediaAssetType.Icon) && ((str2 = this.iconUrl) == null || str2.length() == 0)) {
            BMError bMErrorNotFound = BMError.notFound("iconUrl");
            Intrinsics.checkNotNullExpressionValue(bMErrorNotFound, "notFound(KEY_ICON_URL)");
            callback.onAdLoadFailed(bMErrorNotFound);
            return false;
        }
        if (adRequestParameters.isValidateAssets() && adRequestParameters.containsAssetType(MediaAssetType.Image) && ((str = this.imageUrl) == null || str.length() == 0)) {
            BMError bMErrorNotFound2 = BMError.notFound("imageUrl");
            Intrinsics.checkNotNullExpressionValue(bMErrorNotFound2, "notFound(KEY_IMAGE_URL)");
            callback.onAdLoadFailed(bMErrorNotFound2);
            return false;
        }
        if (!adRequestParameters.isValidateAssets() || !adRequestParameters.containsAssetType(MediaAssetType.Video)) {
            return true;
        }
        String str3 = this.videoAdm;
        if (str3 != null && str3.length() != 0) {
            return true;
        }
        String str4 = this.videoUrl;
        if (str4 != null && str4.length() != 0) {
            return true;
        }
        BMError bMErrorNotFound3 = BMError.notFound("videoAdm or videoUrl");
        Intrinsics.checkNotNullExpressionValue(bMErrorNotFound3, "notFound(\"$KEY_VIDEO_ADM or $KEY_VIDEO_URL\")");
        callback.onAdLoadFailed(bMErrorNotFound3);
        return false;
    }
}
