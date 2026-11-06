package io.bidmachine.banner;

import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.AdFormat;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequestParameters;
import io.bidmachine.BannerAdSize;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BannerAdRequestParameters extends AdRequestParameters {
    public final BannerAdSize bannerAdSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerAdRequestParameters(AdPlacementConfig adPlacementConfig) {
        super(adPlacementConfig);
        Intrinsics.checkNotNullParameter(adPlacementConfig, "adPlacementConfig");
        AdFormat adFormat = adPlacementConfig.getAdFormat();
        if (adFormat instanceof AdFormat.Banner) {
            this.bannerAdSize = ((AdFormat.Banner) adFormat).getBannerAdSize();
        } else {
            this.bannerAdSize = BannerAdSize.Banner;
        }
    }

    @Override // io.bidmachine.AdRequestParameters
    public BMError checkPlacement(Placement placement) throws Throwable {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return ProtoUtilsKt.checkBannerPlacement(placement, this.bannerAdSize);
    }

    public final BannerAdSize getBannerAdSize() {
        return this.bannerAdSize;
    }

    @Override // io.bidmachine.AdRequestParameters
    public boolean isParametersMatched(AdRequestParameters adRequestParameters) {
        Intrinsics.checkNotNullParameter(adRequestParameters, "adRequestParameters");
        return super.isParametersMatched(adRequestParameters) && (adRequestParameters instanceof BannerAdRequestParameters) && isParametersMatchedInternal((BannerAdRequestParameters) adRequestParameters);
    }

    public final boolean isParametersMatchedInternal(BannerAdRequestParameters bannerAdRequestParameters) {
        return this.bannerAdSize.isSuitable(bannerAdRequestParameters.bannerAdSize);
    }
}
