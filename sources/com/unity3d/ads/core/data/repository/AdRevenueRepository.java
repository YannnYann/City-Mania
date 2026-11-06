package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: AdRevenueRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface AdRevenueRepository {
    MutableSharedFlow<AdRevenueEventRequestOuterClass.AdRevenueEventRequest> getAdRevenueEvents();
}
