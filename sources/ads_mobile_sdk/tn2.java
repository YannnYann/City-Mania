package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class tn2 {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[PictureInPictureAdPosition.values().length];
        try {
            iArr[PictureInPictureAdPosition.TOP_LEFT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[PictureInPictureAdPosition.TOP_RIGHT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[PictureInPictureAdPosition.BOTTOM_LEFT.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[PictureInPictureAdPosition.DEFAULT.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[PictureInPictureAdPosition.BOTTOM_RIGHT.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        a = iArr;
    }
}
