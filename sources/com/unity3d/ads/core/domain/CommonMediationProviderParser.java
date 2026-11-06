package com.unity3d.ads.core.domain;

import com.ironsource.adapters.unityads.UnityAdsConstants;
import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: CommonMediationProviderParser.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonMediationProviderParser implements MediationProviderParser {
    @Override // com.unity3d.ads.core.domain.MediationProviderParser
    public ClientInfoOuterClass.MediationProvider invoke(String str) {
        ClientInfoOuterClass.MediationProvider mediationProvider;
        if (str != null) {
            if (StringsKt__StringsJVMKt.startsWith(str, "AppLovinSdk_", true)) {
                mediationProvider = ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_MAX;
            } else if (StringsKt__StringsJVMKt.equals(str, "AdMob", true)) {
                mediationProvider = ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_ADMOB;
            } else if (StringsKt__StringsJVMKt.equals(str, "MAX", true)) {
                mediationProvider = ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_MAX;
            } else {
                mediationProvider = StringsKt__StringsJVMKt.equals(str, UnityAdsConstants.MEDIATION_NAME, true) ? ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_LEVELPLAY : ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_CUSTOM;
            }
            if (mediationProvider != null) {
                return mediationProvider;
            }
        }
        return ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_UNSPECIFIED;
    }
}
