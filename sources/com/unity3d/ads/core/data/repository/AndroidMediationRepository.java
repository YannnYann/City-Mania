package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.data.datasource.MediationDataSource;
import com.unity3d.ads.core.domain.MediationProviderParser;
import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidMediationRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidMediationRepository implements MediationRepository {
    private final MediationDataSource mediationDataSource;
    private final MediationProviderParser mediationProviderParser;

    public AndroidMediationRepository(MediationDataSource mediationDataSource, MediationProviderParser mediationProviderParser) {
        Intrinsics.checkNotNullParameter(mediationDataSource, "mediationDataSource");
        Intrinsics.checkNotNullParameter(mediationProviderParser, "mediationProviderParser");
        this.mediationDataSource = mediationDataSource;
        this.mediationProviderParser = mediationProviderParser;
    }

    @Override // com.unity3d.ads.core.data.repository.MediationRepository
    public String getName() {
        return this.mediationDataSource.getName();
    }

    @Override // com.unity3d.ads.core.data.repository.MediationRepository
    public String getVersion() {
        return this.mediationDataSource.getVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClientInfoOuterClass.MediationProvider _get_mediationProvider_$lambda$0(AndroidMediationRepository androidMediationRepository) {
        return androidMediationRepository.mediationProviderParser.invoke(androidMediationRepository.getName());
    }

    @Override // com.unity3d.ads.core.data.repository.MediationRepository
    public Function0<ClientInfoOuterClass.MediationProvider> getMediationProvider() {
        return new Function0() { // from class: com.unity3d.ads.core.data.repository.AndroidMediationRepository$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidMediationRepository._get_mediationProvider_$lambda$0(this.f$0);
            }
        };
    }
}
