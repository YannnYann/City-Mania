package com.unity3d.ads.core.domain;

import com.unity3d.ads.MediationInfo;
import gatewayprotocol.v1.ClientInfoOuterClass;
import gatewayprotocol.v1.MediationInfoKt;
import gatewayprotocol.v1.MediationInfoOuterClass;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonMediationInfoConverter.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonMediationInfoConverter implements MediationInfoConverter {
    private final MediationProviderParser mediationProviderParser;

    public CommonMediationInfoConverter(MediationProviderParser mediationProviderParser) {
        Intrinsics.checkNotNullParameter(mediationProviderParser, "mediationProviderParser");
        this.mediationProviderParser = mediationProviderParser;
    }

    @Override // com.unity3d.ads.core.domain.MediationInfoConverter
    public MediationInfoOuterClass.MediationInfo invoke(MediationInfo mediationInfoData) {
        Intrinsics.checkNotNullParameter(mediationInfoData, "mediationInfoData");
        ClientInfoOuterClass.MediationProvider mediationProviderInvoke = this.mediationProviderParser.invoke(mediationInfoData.getName());
        MediationInfoKt.Dsl.Companion companion = MediationInfoKt.Dsl.Companion;
        MediationInfoOuterClass.MediationInfo.Builder builderNewBuilder = MediationInfoOuterClass.MediationInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        MediationInfoKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setProvider(mediationProviderInvoke);
        if (mediationProviderInvoke == ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_CUSTOM) {
            dsl_create.setCustomName(mediationInfoData.getName());
        }
        dsl_create.setVersion(mediationInfoData.getVersion());
        dsl_create.setAdapterVersion(mediationInfoData.getAdapterVersion());
        return dsl_create._build();
    }
}
