package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.datasource.VolumeSettingsChange;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.PiiOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: compiled from: DeviceInfoRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface DeviceInfoRepository {
    StaticDeviceInfoOuterClass.StaticDeviceInfo cachedStaticDeviceInfo();

    MutableStateFlow<AllowedPiiOuterClass.AllowedPii> getAllowedPii();

    String getAnalyticsUserId();

    String getAppName();

    Object getAuidByteString(Continuation<? super ByteString> continuation);

    Object getAuidString(Continuation<? super String> continuation);

    String getConnectionTypeStr();

    int getCurrentUiTheme();

    DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo();

    DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo(boolean z);

    boolean getHasInternet();

    Object getIdfi(Continuation<? super String> continuation);

    List<String> getLocaleList();

    String getManufacturer();

    String getModel();

    String getOrientation();

    String getOsVersion();

    PiiOuterClass.Pii getPiiData();

    int getRingerMode();

    long getSystemBootTime();

    Object getUnityBuildGuid(Continuation<? super String> continuation);

    Flow<VolumeSettingsChange> getVolumeSettingsChange();

    Object staticDeviceInfo(Continuation<? super StaticDeviceInfoOuterClass.StaticDeviceInfo> continuation);

    /* JADX INFO: compiled from: DeviceInfoRepository.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfo$default(DeviceInfoRepository deviceInfoRepository, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getDynamicDeviceInfo");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            return deviceInfoRepository.getDynamicDeviceInfo(z);
        }
    }
}
