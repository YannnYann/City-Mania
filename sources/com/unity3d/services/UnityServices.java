package com.unity3d.services;

import android.content.Context;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.InitializationConfiguration;
import com.unity3d.ads.InitializationListener;
import com.unity3d.services.core.lifecycle.CachedLifecycle;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.properties.SdkProperties;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityServices.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UnityServices {
    public static final UnityServices INSTANCE = new UnityServices();
    private static final boolean isSupported = true;

    public static /* synthetic */ void getDebugMode$annotations() {
    }

    public static /* synthetic */ void getVersion$annotations() {
    }

    public static /* synthetic */ void isInitialized$annotations() {
    }

    public static /* synthetic */ void isSupported$annotations() {
    }

    private UnityServices() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final synchronized void initialize(Context context, String str, boolean z, InitializationConfiguration initializationConfiguration, IUnityAdsInitializationListener iUnityAdsInitializationListener) {
        DeviceLog.entered();
        SdkProperties.addInitializationListener(iUnityAdsInitializationListener);
        SdkProperties.setTestMode(z);
        SdkProperties.setDebugMode(SdkProperties.getDebugMode());
        CachedLifecycle.register();
        UnityAdsSDK.initialize$default(new UnityAdsSDK(null, 1, 0 == true ? 1 : 0), str, null, initializationConfiguration, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final synchronized void initialize(Context context, String str, boolean z, InitializationConfiguration initializationConfiguration, InitializationListener initializationListener) {
        DeviceLog.entered();
        SdkProperties.addInitializationListener(initializationListener);
        SdkProperties.setTestMode(z);
        SdkProperties.setDebugMode(SdkProperties.getDebugMode());
        CachedLifecycle.register();
        UnityAdsSDK.initialize$default(new UnityAdsSDK(null, 1, 0 == true ? 1 : 0), str, null, initializationConfiguration, 2, null);
    }

    public static final boolean isSupported() {
        return isSupported;
    }

    public static final boolean isInitialized() {
        return SdkProperties.isInitialized();
    }

    public static final String getVersion() {
        String versionName = SdkProperties.getVersionName();
        Intrinsics.checkNotNullExpressionValue(versionName, "getVersionName(...)");
        return versionName;
    }

    public static final boolean getDebugMode() {
        return SdkProperties.getDebugMode();
    }

    public static final void setDebugMode(boolean z) {
        SdkProperties.setDebugMode(z);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: UnityServices.kt */
    public static final class UnityServicesError {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UnityServicesError[] $VALUES;
        public static final UnityServicesError INVALID_ARGUMENT = new UnityServicesError("INVALID_ARGUMENT", 0);
        public static final UnityServicesError INIT_SANITY_CHECK_FAIL = new UnityServicesError("INIT_SANITY_CHECK_FAIL", 1);

        private static final /* synthetic */ UnityServicesError[] $values() {
            return new UnityServicesError[]{INVALID_ARGUMENT, INIT_SANITY_CHECK_FAIL};
        }

        public static EnumEntries<UnityServicesError> getEntries() {
            return $ENTRIES;
        }

        private UnityServicesError(String str, int i) {
        }

        static {
            UnityServicesError[] unityServicesErrorArr$values = $values();
            $VALUES = unityServicesErrorArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(unityServicesErrorArr$values);
        }

        public static UnityServicesError valueOf(String str) {
            return (UnityServicesError) Enum.valueOf(UnityServicesError.class, str);
        }

        public static UnityServicesError[] values() {
            return (UnityServicesError[]) $VALUES.clone();
        }
    }
}
