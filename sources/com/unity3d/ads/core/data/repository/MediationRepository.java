package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: MediationRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface MediationRepository {
    Function0<ClientInfoOuterClass.MediationProvider> getMediationProvider();

    String getName();

    String getVersion();
}
