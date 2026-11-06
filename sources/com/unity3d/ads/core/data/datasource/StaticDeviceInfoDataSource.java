package com.unity3d.ads.core.data.datasource;

import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: StaticDeviceInfoDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface StaticDeviceInfoDataSource {
    Object fetch(List<String> list, Continuation<? super StaticDeviceInfoOuterClass.StaticDeviceInfo> continuation);

    StaticDeviceInfoOuterClass.StaticDeviceInfo fetchCached();

    String getAnalyticsUserId();

    String getAppName();

    Object getAuid(Continuation<? super String> continuation);

    Object getIdfi(Continuation<? super String> continuation);

    String getManufacturer();

    String getModel();

    String getOsVersion();

    long getSystemBootTime();

    Object getUnityBuildGuid(Continuation<? super String> continuation);
}
