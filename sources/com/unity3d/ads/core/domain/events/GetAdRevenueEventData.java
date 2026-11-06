package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.model.AdRevenueData;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;

/* JADX INFO: compiled from: GetAdRevenueEventData.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetAdRevenueEventData {
    AdRevenueEventRequestOuterClass.AdRevenueData invoke(AdRevenueData adRevenueData);
}
