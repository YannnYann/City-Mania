package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k33 extends wo {
    public final wy2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k33(ck1 internalBannerAd, o53 view, wy2 adLoader) {
        super(internalBannerAd, view);
        Intrinsics.checkNotNullParameter(internalBannerAd, "internalBannerAd");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        this.e = adLoader;
    }

    @Override // ads_mobile_sdk.eq
    public final zh1 a() {
        return (zh1) this.e.u.a("The backing field has not yet been initialized.");
    }

    @Override // ads_mobile_sdk.wo
    public final ck1 b() {
        return (ck1) this.e.u.a("The backing field has not yet been initialized.");
    }

    @Override // ads_mobile_sdk.wo, com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final void setAdEventCallback(BannerAdEventCallback bannerAdEventCallback) {
        b().j().a(bannerAdEventCallback);
    }

    @Override // ads_mobile_sdk.eq, com.google.android.libraries.ads.mobile.sdk.common.Ad
    public final void destroy() {
        this.e.b();
    }
}
