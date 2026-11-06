package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class z22 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[NativeAd.NativeAdType.values().length];
        try {
            iArr[NativeAd.NativeAdType.CUSTOM_NATIVE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[NativeAd.NativeAdType.NATIVE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        a = iArr;
    }
}
