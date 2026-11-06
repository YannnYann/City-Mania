package io.bidmachine.displays;

import android.text.TextUtils;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.AdContentType;
import io.bidmachine.AdFormat;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.CustomParams;
import io.bidmachine.Executable;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfig;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.protobuf.sdk.Placement;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.utils.ProtoUtils;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PlacementBuilder<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    public final AdContentType contentType;
    public final b headerBiddingPlacementBuilder = new b();

    public static /* synthetic */ void $r8$lambda$ix1psIexUIUoSbzff73uRVbkf0o(Placement.Builder builder, CustomParams customParams) {
        Struct.Builder builderNewBuilder = Struct.newBuilder();
        customParams.fillStructBuilder(builderNewBuilder);
        if (builderNewBuilder.getFieldsCount() > 0) {
            builder.setCustomData(builderNewBuilder);
        }
    }

    public PlacementBuilder(AdContentType adContentType) {
        this.contentType = adContentType;
    }

    public abstract AdObjectParams createAdObjectParams(Ad ad);

    public AdObjectParams createHeaderBiddingAdObjectParams(Ad ad) {
        return this.headerBiddingPlacementBuilder.a(ad);
    }

    public HeaderBiddingPlacement.Builder createHeaderBiddingPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, List<NetworkAdUnit> list, int i) {
        return this.headerBiddingPlacementBuilder.a(contextProvider, unifiedadrequestparamstype, adsType, getAdContentType(), collection, list, i);
    }

    public abstract Message.Builder createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, List<NetworkAdUnit> list, AdPlacementConfig adPlacementConfig, int i) throws Exception;

    public Placement createSdkPlacement(AdPlacementConfig adPlacementConfig, HeaderBiddingPlacement.Builder builder) {
        final Placement.Builder builderNewBuilder = Placement.newBuilder();
        AdFormat adFormat = adPlacementConfig.getAdFormat();
        builderNewBuilder.setAdFormat(ProtoUtils.createAdFormatBuilder(adFormat));
        builderNewBuilder.setAdType(adFormat.getAdsType().getName());
        String placementId = adPlacementConfig.getPlacementId();
        if (!TextUtils.isEmpty(placementId)) {
            builderNewBuilder.setPlacementId(StringValue.of(placementId));
        }
        Utils.ifNotNull(adPlacementConfig.getCustomParams(), new Executable() { // from class: io.bidmachine.displays.PlacementBuilder$$ExternalSyntheticLambda0
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                PlacementBuilder.$r8$lambda$ix1psIexUIUoSbzff73uRVbkf0o(builderNewBuilder, (CustomParams) obj);
            }
        });
        if (builder != null) {
            builderNewBuilder.setHbPlacement(builder);
        }
        return builderNewBuilder.build();
    }

    public AdContentType getAdContentType() {
        return this.contentType;
    }

    public HeaderBiddingAd obtainHeaderBiddingAd(Ad ad) {
        return this.headerBiddingPlacementBuilder.b(ad);
    }
}
