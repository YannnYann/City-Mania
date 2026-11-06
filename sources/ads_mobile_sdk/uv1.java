package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class uv1 {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;
    public static final /* synthetic */ int[] c;

    static {
        int[] iArr = new int[NativeAd.SwipeGestureDirection.values().length];
        try {
            iArr[NativeAd.SwipeGestureDirection.RIGHT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[NativeAd.SwipeGestureDirection.LEFT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[NativeAd.SwipeGestureDirection.UP.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[NativeAd.SwipeGestureDirection.DOWN.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        a = iArr;
        int[] iArr2 = new int[AdChoicesPlacement.values().length];
        try {
            iArr2[AdChoicesPlacement.TOP_LEFT.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[AdChoicesPlacement.TOP_RIGHT.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[AdChoicesPlacement.BOTTOM_RIGHT.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[AdChoicesPlacement.BOTTOM_LEFT.ordinal()] = 4;
        } catch (NoSuchFieldError unused8) {
        }
        b = iArr2;
        int[] iArr3 = new int[NativeAd.NativeMediaAspectRatio.values().length];
        try {
            iArr3[NativeAd.NativeMediaAspectRatio.UNKNOWN.ordinal()] = 1;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr3[NativeAd.NativeMediaAspectRatio.ANY.ordinal()] = 2;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr3[NativeAd.NativeMediaAspectRatio.LANDSCAPE.ordinal()] = 3;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr3[NativeAd.NativeMediaAspectRatio.PORTRAIT.ordinal()] = 4;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr3[NativeAd.NativeMediaAspectRatio.SQUARE.ordinal()] = 5;
        } catch (NoSuchFieldError unused13) {
        }
        c = iArr3;
    }
}
