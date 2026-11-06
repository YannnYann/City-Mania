package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.model.AdRevenueAdFormat;
import com.unity3d.ads.core.data.model.AdRevenueData;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import gatewayprotocol.v1.AdFormatOuterClass;
import gatewayprotocol.v1.AdRevenueDataKt;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidGetAdRevenueEventData.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidGetAdRevenueEventData implements GetAdRevenueEventData {
    @Override // com.unity3d.ads.core.domain.events.GetAdRevenueEventData
    public AdRevenueEventRequestOuterClass.AdRevenueData invoke(AdRevenueData data) {
        AdFormatOuterClass.AdFormat proto;
        Intrinsics.checkNotNullParameter(data, "data");
        AdRevenueDataKt.Dsl.Companion companion = AdRevenueDataKt.Dsl.Companion;
        AdRevenueEventRequestOuterClass.AdRevenueData.Builder builderNewBuilder = AdRevenueEventRequestOuterClass.AdRevenueData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AdRevenueDataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setEventId(ProtobufExtensionsKt.toByteString(data.getEventId()));
        Double revenue = data.getRevenue();
        if (revenue != null) {
            dsl_create.setRevenue(revenue.doubleValue());
        }
        String countryCode = data.getCountryCode();
        if (countryCode != null) {
            dsl_create.setCountryCode(countryCode);
        }
        String networkName = data.getNetworkName();
        if (networkName != null) {
            dsl_create.setNetworkName(networkName);
        }
        String adUnitId = data.getAdUnitId();
        if (adUnitId != null) {
            dsl_create.setAdUnitId(adUnitId);
        }
        String thirdPartyAdPlacementId = data.getThirdPartyAdPlacementId();
        if (thirdPartyAdPlacementId != null) {
            dsl_create.setThirdPartyAdPlacementId(thirdPartyAdPlacementId);
        }
        AdRevenueAdFormat adFormat = data.getAdFormat();
        if (adFormat == null || (proto = AndroidGetAdRevenueEventDataKt.toProto(adFormat)) == null) {
            proto = AdFormatOuterClass.AdFormat.AD_FORMAT_UNSPECIFIED;
        }
        dsl_create.setAdFormat(proto);
        return dsl_create._build();
    }
}
