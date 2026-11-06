package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class r91 {
    public static NativeAdRequest a(IconAdRequest iconAdRequest) {
        Intrinsics.checkNotNullParameter(iconAdRequest, "<this>");
        NativeAdRequest.Builder builder = new NativeAdRequest.Builder(iconAdRequest.getAdUnitId(), CollectionsKt__CollectionsJVMKt.listOf(NativeAd.NativeAdType.NATIVE));
        if (iconAdRequest.isImageLoadingDisabled()) {
            builder.disableImageDownloading();
        }
        builder.setAdChoicesPlacement(iconAdRequest.getAdChoicesPlacement());
        if (iconAdRequest.getAdPersistenceEnabled()) {
            builder.setAdPersistenceEnabled();
        }
        return builder.build();
    }
}
