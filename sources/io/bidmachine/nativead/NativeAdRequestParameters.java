package io.bidmachine.nativead;

import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.AdFormat;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.MediaAssetType;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class NativeAdRequestParameters extends AdRequestParameters {
    public boolean isValidateAssets;
    public final List<MediaAssetType> mediaAssetTypes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdRequestParameters(AdPlacementConfig adPlacementConfig) {
        super(adPlacementConfig);
        Intrinsics.checkNotNullParameter(adPlacementConfig, "adPlacementConfig");
        this.isValidateAssets = true;
        AdFormat adFormat = adPlacementConfig.getAdFormat();
        if (adFormat instanceof AdFormat.Native) {
            this.mediaAssetTypes = ((AdFormat.Native) adFormat).getMediaAssetTypes();
            return;
        }
        List<MediaAssetType> DEFAULT = MediaAssetType.DEFAULT;
        Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
        this.mediaAssetTypes = DEFAULT;
    }

    @Override // io.bidmachine.AdRequestParameters
    public BMError checkPlacement(Placement placement) throws Throwable {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return ProtoUtilsKt.checkNativePlacement(placement);
    }

    public final boolean containsAssetType(MediaAssetType mediaAssetType) {
        Intrinsics.checkNotNullParameter(mediaAssetType, "mediaAssetType");
        return this.mediaAssetTypes.isEmpty() || this.mediaAssetTypes.contains(mediaAssetType) || this.mediaAssetTypes.contains(MediaAssetType.All);
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isParametersMatched(AdRequestParameters adRequestParameters) {
        Intrinsics.checkNotNullParameter(adRequestParameters, "adRequestParameters");
        return super.isParametersMatched(adRequestParameters) && (adRequestParameters instanceof NativeAdRequestParameters) && isParametersMatchedInternal((NativeAdRequestParameters) adRequestParameters);
    }

    public final boolean isParametersMatchedInternal(NativeAdRequestParameters nativeAdRequestParameters) {
        return MediaAssetType.isAll(nativeAdRequestParameters.mediaAssetTypes) || nativeAdRequestParameters.mediaAssetTypes.containsAll(this.mediaAssetTypes);
    }

    public final boolean isValidateAssets() {
        return this.isValidateAssets;
    }

    public final void setValidateAssets(boolean z) {
        this.isValidateAssets = z;
    }
}
