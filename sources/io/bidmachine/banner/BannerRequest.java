package io.bidmachine.banner;

import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdRequest;
import io.bidmachine.BannerAdSize;
import io.bidmachine.CustomParams;
import io.bidmachine.NetworkConfig;
import io.bidmachine.PriceFloorParams;
import io.bidmachine.SessionAdParams;
import io.bidmachine.TargetingParams;
import io.bidmachine.UnifiedAdRequestParamsImpl;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.RequestBuilder;
import io.bidmachine.models.TargetingInfo;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class BannerRequest extends AdRequest<BannerRequest, BannerAdRequestParameters, UnifiedBannerAdRequestParams> {

    public static final class Builder extends AdRequest.AdRequestBuilderImpl<Builder, BannerRequest, BannerAdRequestParameters> {
        @Deprecated(since = "3.5.0")
        public Builder() {
            super(AdPlacementConfig.bannerBuilder().build());
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ AdRequest build() {
            return super.build();
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ RequestBuilder setBidPayload(String str) {
            return super.setBidPayload(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @Deprecated(since = "3.5.0")
        public /* bridge */ /* synthetic */ RequestBuilder setCustomParams(CustomParams customParams) {
            return super.setCustomParams(customParams);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ RequestBuilder setListener(AdRequest.AdRequestListener adRequestListener) {
            return super.setListener(adRequestListener);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ RequestBuilder setLoadingTimeOut(Integer num) {
            return super.setLoadingTimeOut(num);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ RequestBuilder setNetworks(String str) {
            return super.setNetworks(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @Deprecated(since = "3.5.0")
        public /* bridge */ /* synthetic */ RequestBuilder setPlacementId(String str) {
            return super.setPlacementId(str);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ RequestBuilder setPriceFloorParams(PriceFloorParams priceFloorParams) {
            return super.setPriceFloorParams(priceFloorParams);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        @Deprecated
        public /* bridge */ /* synthetic */ RequestBuilder setSessionAdParams(SessionAdParams sessionAdParams) {
            return super.setSessionAdParams(sessionAdParams);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ RequestBuilder setTargetingParams(TargetingParams targetingParams) {
            return super.setTargetingParams(targetingParams);
        }

        public Builder(AdPlacementConfig adPlacementConfig) {
            super(adPlacementConfig);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public BannerAdRequestParameters createAdRequestParameters() {
            return new BannerAdRequestParameters(this.adPlacementConfig);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public /* bridge */ /* synthetic */ RequestBuilder setNetworks(List list) {
            return super.setNetworks((List<NetworkConfig>) list);
        }

        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public BannerRequest build(BannerAdRequestParameters bannerAdRequestParameters) {
            return new BannerRequest(bannerAdRequestParameters);
        }
    }

    public static class b extends UnifiedAdRequestParamsImpl implements UnifiedBannerAdRequestParams {
        @Override // io.bidmachine.UnifiedAdRequestParamsImpl, io.bidmachine.unified.UnifiedAdRequestParams
        public /* bridge */ /* synthetic */ BannerAdRequestParameters getAdRequestParameters() {
            return (BannerAdRequestParameters) super.getAdRequestParameters();
        }

        public b(BannerAdRequestParameters bannerAdRequestParameters, TargetingInfo targetingInfo, DataRestrictions dataRestrictions) {
            super(bannerAdRequestParameters, targetingInfo, dataRestrictions);
        }
    }

    public BannerAdSize getBannerAdSize() {
        return getAdRequestParameters().getBannerAdSize();
    }

    public BannerRequest(BannerAdRequestParameters bannerAdRequestParameters) {
        super(bannerAdRequestParameters);
    }

    @Override // io.bidmachine.AdRequest
    public UnifiedBannerAdRequestParams createUnifiedAdRequestParams(BannerAdRequestParameters bannerAdRequestParameters, TargetingInfo targetingInfo, DataRestrictions dataRestrictions) {
        return new b(bannerAdRequestParameters, targetingInfo, dataRestrictions);
    }
}
