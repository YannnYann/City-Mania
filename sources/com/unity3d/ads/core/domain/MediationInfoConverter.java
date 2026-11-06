package com.unity3d.ads.core.domain;

import com.unity3d.ads.MediationInfo;
import gatewayprotocol.v1.MediationInfoOuterClass;

/* JADX INFO: compiled from: MediationInfoConverter.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface MediationInfoConverter {
    MediationInfoOuterClass.MediationInfo invoke(MediationInfo mediationInfo);
}
