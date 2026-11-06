package com.google.android.gms.ads;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class MobileAds {
    public static final MobileAds INSTANCE = new MobileAds();

    private MobileAds() {
    }

    public static final RequestConfiguration getRequestConfiguration() {
        com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration requestConfiguration = com.google.android.libraries.ads.mobile.sdk.MobileAds.Companion.getRequestConfiguration();
        int value = requestConfiguration.getTagForChildDirectedTreatment().getValue();
        int value2 = requestConfiguration.getTagForUnderAgeOfConsent().getValue();
        String value3 = requestConfiguration.getMaxAdContentRating().getValue();
        List<String> testDeviceIds = requestConfiguration.getTestDeviceIds();
        String strName = requestConfiguration.getAgeRestrictedTreatment().name();
        AgeRestrictedTreatment ageRestrictedTreatment = AgeRestrictedTreatment.UNSPECIFIED;
        return new RequestConfiguration(value, value2, value3, testDeviceIds, (AgeRestrictedTreatment) Enum.valueOf(AgeRestrictedTreatment.class, strName));
    }

    public static final VersionInfo getVersion() {
        com.google.android.libraries.ads.mobile.sdk.common.VersionInfo version = com.google.android.libraries.ads.mobile.sdk.MobileAds.Companion.getVersion();
        return new VersionInfo(version.getMajorVersion(), version.getMinorVersion(), version.getMicroVersion());
    }
}
