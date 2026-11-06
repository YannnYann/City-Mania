package com.ironsource;

import com.facebook.ads.AdError;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.ironsource.e8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class EnumC3581e8 {
    private static final /* synthetic */ EnumC3581e8[] C;
    private static final /* synthetic */ EnumEntries D;
    private final int a;
    private final String b;
    public static final EnumC3581e8 c = new EnumC3581e8("ISErrorInitNetworkFailed", 0, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR_CODE, "Initialization failed due to network failure.");
    public static final EnumC3581e8 d = new EnumC3581e8("ISErrorInitDecryptionFailure", 1, AdError.LOAD_CALLED_WHILE_SHOWING_AD, "Initialization failed due to decryption failure.");
    public static final EnumC3581e8 e = new EnumC3581e8("ISErrorInitHttpRequestFailed", 2, AdError.CLEAR_TEXT_SUPPORT_NOT_ALLOWED, "Initialization failed due to HTTP request failure.");
    public static final EnumC3581e8 f = new EnumC3581e8("ISErrorInitInvalidResponse", 3, AdError.INCORRECT_STATE_ERROR, "Initialization failed due to invalid response.");
    public static final EnumC3581e8 g = new EnumC3581e8("ISErrorLoadNetworkFailed", 4, 7101, "Loading failed due to network failure.");
    public static final EnumC3581e8 h = new EnumC3581e8("ISErrorLoadADMDecryptionFailure", 5, 7102, "Loading failed due to ADM decryption failure.");
    public static final EnumC3581e8 i = new EnumC3581e8("ISErrorLoadADMEmptyServerData", 6, 7103, "Loading failed due to empty server data.");
    public static final EnumC3581e8 j = new EnumC3581e8("ISErrorLoadADMEmptyWaterfall", 7, 7104, "Loading failed due to empty waterfall.");
    public static final EnumC3581e8 k = new EnumC3581e8("ISErrorLoadADMInvalidJSON", 8, 7105, "Loading failed due to invalid ADM JSON.");
    public static final EnumC3581e8 l = new EnumC3581e8("ISErrorLoadADMNoAuctionID", 9, 7106, "Loading failed due to missing auction ID.");
    public static final EnumC3581e8 m = new EnumC3581e8("ISErrorLoadADMNoConfigurationForRequestedNetwork", 10, 7107, "Loading failed due to no configuration for requested network.");
    public static final EnumC3581e8 n = new EnumC3581e8("ISErrorLoadADMInvalidConfigurationForRequestedNetwork", 11, 7108, "Loading failed due to invalid configuration for requested network.");
    public static final EnumC3581e8 o = new EnumC3581e8("ISErrorLoadBiddingInNonBidding", 12, 7109, "Loading failed due to non-bidding in bidding context.");
    public static final EnumC3581e8 p = new EnumC3581e8("ISErrorLoadNullADM", 13, 7110, "Loading failed due to null ADM.");
    public static final EnumC3581e8 q = new EnumC3581e8("ISErrorLoadInstanceNotInInitResponse", 14, 7111, "Loading failed due to instance not being in init response.");
    public static final EnumC3581e8 r = new EnumC3581e8("ISErrorLoadNoAdFormatConfigurations", 15, 7112, "Loading failed due to no ad format configurations.");
    public static final EnumC3581e8 s = new EnumC3581e8("ISErrorLoadTimedOut", 16, 7113, "Loading failed due to timeout.");
    public static final EnumC3581e8 t = new EnumC3581e8("ISErrorLoadSDKNotInitialized", 17, 7115, "Loading failed due to SDK not being initialized.");
    public static final EnumC3581e8 u = new EnumC3581e8("ISErrorLoadBannerNetworkViewIsNull", 18, 7116, "Loading failed due to null network banner view.");
    public static final EnumC3581e8 v = new EnumC3581e8("ISErrorLoadBannerSizeIsNull", 19, 7117, "Loading failed because the banner size is null.");
    public static final EnumC3581e8 w = new EnumC3581e8("ISErrorLoadBannerNotSupportedSize", 20, 7118, "Loading failed due to banner size not supported.");
    public static final EnumC3581e8 x = new EnumC3581e8("ISErrorShowNetworkFailed", 21, 7201, "Showing ad failed due to network failure.");
    public static final EnumC3581e8 y = new EnumC3581e8("ISErrorShowNotReadyToShowAd", 22, 7202, "Showing ad failed because the ad is not ready to show.");
    public static final EnumC3581e8 z = new EnumC3581e8("ISErrorInterstitialLoadNoConfig", 23, UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, "Load failed due to no config");
    public static final EnumC3581e8 A = new EnumC3581e8("ISErrorBannerLoadNoConfig", 24, Sdk.SDKError.Reason.AD_NO_FILL_VALUE, "Load failed due to no config");
    public static final EnumC3581e8 B = new EnumC3581e8("ISErrorRewardedLoadNoConfig", 25, Sdk.SDKError.Reason.AD_LOAD_TOO_FREQUENTLY_VALUE, "Load failed due to no config");

    static {
        EnumC3581e8[] enumC3581e8ArrA = a();
        C = enumC3581e8ArrA;
        D = EnumEntriesKt.enumEntries(enumC3581e8ArrA);
    }

    private EnumC3581e8(String str, int i2, int i3, String str2) {
        this.a = i3;
        this.b = str2;
    }

    private static final /* synthetic */ EnumC3581e8[] a() {
        return new EnumC3581e8[]{c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B};
    }

    public static EnumEntries<EnumC3581e8> b() {
        return D;
    }

    public static EnumC3581e8 valueOf(String str) {
        return (EnumC3581e8) Enum.valueOf(EnumC3581e8.class, str);
    }

    public static EnumC3581e8[] values() {
        return (EnumC3581e8[]) C.clone();
    }

    public final int c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }
}
