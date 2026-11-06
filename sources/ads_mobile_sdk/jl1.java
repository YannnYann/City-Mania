package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class jl1 {
    public static v01 a(List nativeAdTypes, List customFormatIds, AdSize adSize, Integer num) {
        Intrinsics.checkNotNullParameter(nativeAdTypes, "nativeAdTypes");
        Intrinsics.checkNotNullParameter(customFormatIds, "customFormatIds");
        if (nativeAdTypes.isEmpty()) {
            return new m01("Native ad types cannot be empty.", kk1.b);
        }
        NativeAd.NativeAdType nativeAdType = NativeAd.NativeAdType.CUSTOM_NATIVE;
        if (nativeAdTypes.contains(nativeAdType) && customFormatIds.isEmpty()) {
            return new m01("When requesting custom native ads, you must set at least one custom format ID.", kk1.b);
        }
        NativeAd.NativeAdType nativeAdType2 = NativeAd.NativeAdType.BANNER;
        if (nativeAdTypes.contains(nativeAdType2) && nativeAdTypes.size() == 1) {
            return new m01("A native ad request for banner ads only is not allowed. Suggested action: Use BannerAd to request banner ads.", kk1.b);
        }
        if (nativeAdTypes.contains(nativeAdType2) && adSize == null) {
            return new m01("When requesting a banner ad, you must set at least one AdSize. Suggested action: Call NativeRequest.setAdSizes() with at least one ad size.", kk1.b);
        }
        if (num != null && num.intValue() < 1) {
            return new m01("Number of ads requested must be greater than 0.", kk1.b);
        }
        if (!customFormatIds.isEmpty() && !nativeAdTypes.contains(nativeAdType)) {
            f01.c("Custom native ad format IDs were provided, but custom native ads were not requested.", null);
        }
        if (adSize != null && !nativeAdTypes.contains(nativeAdType2)) {
            f01.c("AdSize was provided, but banner ads were not requested. Suggested action: Update NativeRequest.nativeAdTypes to add NativeAdType.BANNER.", null);
        }
        return new q01(Unit.INSTANCE);
    }
}
