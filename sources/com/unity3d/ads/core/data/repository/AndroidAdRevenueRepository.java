package com.unity3d.ads.core.data.repository;

import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: AndroidAdRevenueRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidAdRevenueRepository implements AdRevenueRepository {
    private final MutableSharedFlow<AdRevenueEventRequestOuterClass.AdRevenueEventRequest> adRevenueEvents = SharedFlowKt.MutableSharedFlow(0, 64, BufferOverflow.DROP_OLDEST);

    @Override // com.unity3d.ads.core.data.repository.AdRevenueRepository
    public MutableSharedFlow<AdRevenueEventRequestOuterClass.AdRevenueEventRequest> getAdRevenueEvents() {
        return this.adRevenueEvents;
    }
}
