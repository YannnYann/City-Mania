package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdOptionsViewPosition;
import com.facebook.ads.VideoAutoplayBehavior;
import com.facebook.ads.internal.api.NativeAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2711k0 implements NativeAdApi {
    public static String[] A03 = {"mRGpAzErj1xKeHc9WkF3Ujy7h38joZC8", "9wVKpObP8FA1o7oyYWhkpjh48o8VAcWp", "pz3BbJjT9xlHe4B2EghGg76rolJKqfV", "txN8wQ5fkL3IFh565s3Q1NMKA4RH7CNr", "KrzK51p50C2Qp4g1XOaXdDfTUeF", "0wnkiGzVks6qBKMatIgqU8hY2PaKlPy", "GWxCKnjCJrIvVlnjjEtvZJVKWYpK", "UfKYcBFUD7Ap"};
    public NativeAdOptionsViewPosition A00 = NativeAdOptionsViewPosition.TOP_RIGHT;
    public final NativeAd A01;
    public final NativeAdBaseApi A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, List<View> list) {
        registerViewForInteraction(view, mediaView, (MediaView) null, list);
    }

    public C2711k0(NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        this.A01 = nativeAd;
        this.A02 = nativeAdBaseApi;
        GT.A0L(nativeAdBaseApi).A1i(EnumC2950nx.A05);
    }

    public C2711k0(NativeAdBase nativeAdBase, NativeAd nativeAd, NativeAdBaseApi nativeAdBaseApi) {
        this.A01 = nativeAd;
        this.A02 = nativeAdBaseApi;
    }

    private GT A00() {
        return GT.A0L(this.A02);
    }

    public final int A01() {
        return A00().A10();
    }

    public final String A02() {
        return A00().A1L();
    }

    public final String A03() {
        return A00().A1M();
    }

    public final List<NativeAd> A04() {
        if (A00().A1N() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (GT internalNativeAd : A00().A1N()) {
            arrayList.add(new NativeAd(internalNativeAd.A16(), internalNativeAd));
        }
        return arrayList;
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final NativeAd.AdCreativeType getAdCreativeType() {
        if (!TextUtils.isEmpty(A00().A1M())) {
            return NativeAd.AdCreativeType.VIDEO;
        }
        if (A00().A1N() != null && !A00().A1N().isEmpty()) {
            return NativeAd.AdCreativeType.CAROUSEL;
        }
        if (A00().getAdCoverImage() != null && !TextUtils.isEmpty(A00().getAdCoverImage().getUrl())) {
            NativeAd.AdCreativeType adCreativeType = NativeAd.AdCreativeType.IMAGE;
            String[] strArr = A03;
            if (strArr[7].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[7] = "AqlRmswAejgv";
            strArr2[6] = "RNgsy314kOszGsZ2llWC7eCbS6WS";
            return adCreativeType;
        }
        return NativeAd.AdCreativeType.UNKNOWN;
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final NativeAdOptionsViewPosition getPreferredAdOptionsViewPosition() {
        return this.A00;
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final VideoAutoplayBehavior getVideoAutoplayBehavior() {
        return EnumC2941nm.A00(A00().A1D());
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView) {
        registerViewForInteraction(view, mediaView, (MediaView) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, ImageView imageView) {
        registerViewForInteraction(view, mediaView, imageView, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, ImageView imageView, List<View> clickableViews) {
        if (imageView != null) {
            C1643Hi c1643HiA16 = A00().A16();
            C1643Hi downloadContext = C2698jn.A03(imageView.getContext());
            downloadContext.A0L(c1643HiA16);
            GT.A0k(A00().getAdIcon(), imageView, downloadContext);
        }
        registerViewForInteraction(view, mediaView, (MediaView) null, clickableViews);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, MediaView mediaView2) {
        registerViewForInteraction(view, mediaView, mediaView2, (List<View>) null);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void registerViewForInteraction(View view, MediaView mediaView, MediaView mediaView2, List<View> list) {
        if (mediaView != null) {
            ((IC) mediaView.getMediaViewApi()).A0W(this.A01);
        }
        if (mediaView2 != null) {
            ((IC) mediaView2.getMediaViewApi()).A0X(this.A02, false);
        }
        if (list != null) {
            A00().A1V(view, mediaView, list);
        } else {
            A00().A1U(view, mediaView);
        }
        NativeAd nativeAd = this.A01;
        String[] strArr = A03;
        if (strArr[3].charAt(5) == strArr[0].charAt(5)) {
            throw new RuntimeException();
        }
        A03[4] = "MBr";
        AbstractC2725kE.A03(view, nativeAd, A00(), this.A00);
    }

    @Override // com.facebook.ads.internal.api.NativeAdApi
    public final void setPreferredAdOptionsViewPosition(NativeAdOptionsViewPosition nativeAdOptionsViewPosition) {
        this.A00 = nativeAdOptionsViewPosition;
    }
}
