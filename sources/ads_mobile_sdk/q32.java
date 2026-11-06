package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class q32 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[AdChoicesPlacement.values().length];
        try {
            iArr[AdChoicesPlacement.TOP_LEFT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[AdChoicesPlacement.BOTTOM_LEFT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[AdChoicesPlacement.BOTTOM_RIGHT.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[AdChoicesPlacement.TOP_RIGHT.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        a = iArr;
    }
}
