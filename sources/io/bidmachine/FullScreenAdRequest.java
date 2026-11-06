package io.bidmachine;

import io.bidmachine.AdRequest;
import io.bidmachine.FullScreenAdRequest;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.TargetingInfo;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FullScreenAdRequest<SelfType extends FullScreenAdRequest<SelfType>> extends AdRequest<SelfType, FullScreenAdRequestParameters, UnifiedFullscreenAdRequestParams> {

    public static abstract class FullScreenRequestBuilder<SelfType extends FullScreenRequestBuilder<SelfType, ReturnType>, ReturnType extends FullScreenAdRequest<ReturnType>> extends AdRequest.AdRequestBuilderImpl<SelfType, ReturnType, FullScreenAdRequestParameters> {
        public FullScreenRequestBuilder(AdPlacementConfig adPlacementConfig) {
            super(adPlacementConfig);
        }

        public SelfType setAdContentType(AdContentType adContentType) {
            return this;
        }
    }

    public static class b extends UnifiedAdRequestParamsImpl implements UnifiedFullscreenAdRequestParams {
        public b(FullScreenAdRequestParameters fullScreenAdRequestParameters, TargetingInfo targetingInfo, DataRestrictions dataRestrictions) {
            super(fullScreenAdRequestParameters, targetingInfo, dataRestrictions);
        }
    }

    public FullScreenAdRequest(FullScreenAdRequestParameters fullScreenAdRequestParameters) {
        super(fullScreenAdRequestParameters);
    }

    public AdContentType getAdContentType() {
        return getAdRequestParameters().getAdContentType();
    }

    @Override // io.bidmachine.AdRequest
    public boolean isPlacementBuilderMatch(PlacementBuilder placementBuilder) {
        return super.isPlacementBuilderMatch(placementBuilder) && getAdRequestParameters().isContentTypeMatch(placementBuilder.getAdContentType());
    }

    @Override // io.bidmachine.AdRequest
    public UnifiedFullscreenAdRequestParams createUnifiedAdRequestParams(FullScreenAdRequestParameters fullScreenAdRequestParameters, TargetingInfo targetingInfo, DataRestrictions dataRestrictions) {
        return new b(fullScreenAdRequestParameters, targetingInfo, dataRestrictions);
    }
}
