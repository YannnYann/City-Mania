package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdOptionsViewPosition;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeBannerAdApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2721kA implements NativeBannerAdApi {
    public static byte[] A03;
    public static String[] A04 = {"GHtEJsCBxF6ZG8G1CCL5RBmKmDCxDlHG", "8TFtHG5", "ovYsObbmHQ4MgJZYSDt7UbSE4I8Jd3xL", "OStrwIklzSQSoVp6y3SnTe0L", "CizBuXx6tKQSK5P8xVf5ORSYZ1", "CxGaKpsxgS6bhWDX5B71lG4aeRzyf4w9", "ZUquOnXGk9BCY4cqa0yz5KxW6oH5Pvvn", "wvrH4lpYI8UyLhNBrrW8XGK9bs66R2Pk"};
    public NativeAdOptionsViewPosition A00 = NativeAdOptionsViewPosition.TOP_RIGHT;
    public final NativeBannerAd A01;
    public final GT A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 40);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{43, 47, 44, 24, 9, 4, 8, 3, 14, 8, 35, 8, 25, 26, 2, 31, 6};
        String[] strArr = A04;
        if (strArr[3].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A04[1] = "g9VMJ7KVDiHxjzY4mov6XPU8OVFxG";
    }

    static {
        A01();
    }

    public C2721kA(NativeBannerAd nativeBannerAd, NativeAdBaseApi nativeAdBaseApi) {
        this.A01 = nativeBannerAd;
        this.A02 = GT.A0L(nativeAdBaseApi);
        this.A02.A1i(EnumC2950nx.A04);
    }

    private void A02(View view) {
        if (this.A01 == null) {
            return;
        }
        AbstractC2725kE.A03(view, this.A01, this.A02, this.A00);
    }

    private void A03(ImageView imageView, NativeAdBaseApi nativeAdBaseApi) {
        GT gtA0L = GT.A0L(nativeAdBaseApi);
        I4 i4 = new I4(this, imageView, gtA0L);
        C2937ni adIcon = gtA0L.getAdIcon();
        if (adIcon != null) {
            Bitmap preloadedBitmap = gtA0L.A14().A0N(adIcon.getUrl());
            C1643Hi c1643HiA03 = C2698jn.A03(imageView.getContext());
            if (preloadedBitmap != null) {
                Drawable drawableA05 = GT.A05(c1643HiA03, preloadedBitmap, gtA0L.A1u(), gtA0L.A1I());
                GT.A0f(drawableA05, imageView);
                imageView.post(new I3(this, gtA0L, drawableA05));
                return;
            } else {
                I4 i42 = null;
                new C2718k7(c1643HiA03, i4, gtA0L.A1u(), i42).A05(new C2720k9(adIcon.getUrl(), gtA0L.A1I(), i42));
                return;
            }
        }
        GS gsA1A = gtA0L.A1A();
        AdErrorType adErrorType = AdErrorType.NATIVE_AD_IS_NOT_LOADED;
        gtA0L.A16().A0F().A3j(-1L, adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        if (gsA1A != null) {
            gsA1A.AEr(C2947nt.A00(adErrorType));
        }
        Log.e(A00(0, 17, 69), adErrorType.getDefaultErrorMessage());
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final NativeAdOptionsViewPosition getPreferredAdOptionsViewPosition() {
        return this.A00;
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, ImageView imageView) {
        registerViewForInteraction(view, imageView, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, ImageView imageView, List<View> list) {
        if (imageView != null) {
            A03(imageView, this.A02);
        }
        if (list != null) {
            this.A02.A1T(view, imageView, list);
        } else {
            this.A02.A1S(view, imageView);
        }
        A02(view);
        String[] strArr = A04;
        if (strArr[2].charAt(7) == strArr[0].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[3] = "aqqJFC2MZ8JcwAaQxvIwSb4p";
        strArr2[4] = "3bsn9ejtbXpCBWXTDKLVYEUuq7";
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView) {
        registerViewForInteraction(view, mediaView, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, List<View> list) {
        if (mediaView != null) {
            IC ic = (IC) mediaView.getMediaViewApi();
            GT gt = this.A02;
            String[] strArr = A04;
            if (strArr[3].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[2] = "js1TYeoyNOBe6miaJaLofzAsC6CsUfwk";
            strArr2[0] = "W1hafLFlhK2580scubVHArACmFSZlS1F";
            ic.A0X(gt, true);
        }
        if (list != null) {
            this.A02.A1W(view, mediaView, list, true);
        } else {
            this.A02.A1X(view, mediaView, true);
        }
        A02(view);
    }

    @Override // com.facebook.ads.internal.api.NativeBannerAdApi
    public final void setPreferredAdOptionsViewPosition(NativeAdOptionsViewPosition nativeAdOptionsViewPosition) {
        this.A00 = nativeAdOptionsViewPosition;
    }
}
