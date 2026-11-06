package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.CustomNativeAd;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class nc0 extends eq implements CustomNativeAd {
    public static final /* synthetic */ KProperty[] g = {kk.a(nc0.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", 0), kk.a(nc0.class, "onCustomClickListener", "getOnCustomClickListener()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;", 0)};
    public final InternalNativeAd b;
    public final tn3 c;
    public final tn3 d;
    public final String e;
    public final su1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nc0(InternalNativeAd internalNativeAd) {
        super(internalNativeAd);
        Intrinsics.checkNotNullParameter(internalNativeAd, "internalNativeAd");
        this.b = internalNativeAd;
        this.c = new tn3(new lc0(this), null);
        this.d = new tn3(new mc0(this), null);
        this.e = internalNativeAd.q().c;
        this.f = new su1(internalNativeAd);
    }
}
