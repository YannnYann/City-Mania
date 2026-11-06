package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class je {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[AdFormat.values().length];
        try {
            iArr[AdFormat.APP_OPEN_AD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[AdFormat.BANNER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[AdFormat.ICON.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[AdFormat.INTERSTITIAL.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[AdFormat.NATIVE.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[AdFormat.REWARDED.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[AdFormat.REWARDED_INTERSTITIAL.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[AdFormat.SWIPEABLE_INTERSTITIAL.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        a = iArr;
    }
}
