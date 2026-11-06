package com.unity3d.ads.core.data.datasource;

import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import java.util.List;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: DynamicDeviceInfoDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface DynamicDeviceInfoDataSource {
    DynamicDeviceInfoOuterClass.DynamicDeviceInfo fetch(boolean z);

    String getConnectionTypeStr();

    int getCurrentUiTheme();

    List<String> getLocaleList();

    String getOrientation();

    int getRingerMode();

    Flow<VolumeSettingsChange> getVolumeSettingsChange();

    boolean hasInternet();
}
