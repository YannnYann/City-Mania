package ads_mobile_sdk;

import android.app.Activity;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class wo extends eq implements BannerAd {
    public final ck1 b;
    public final o53 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wo(ck1 internalBannerAd, o53 adFrame) {
        super(internalBannerAd);
        Intrinsics.checkNotNullParameter(internalBannerAd, "internalBannerAd");
        Intrinsics.checkNotNullParameter(adFrame, "adFrame");
        this.b = internalBannerAd;
        this.c = adFrame;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final View getView() {
        return this.c;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final View getView(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a01.a.getClass();
        ((f0) ((vf0) zz0.a()).E.get()).a(activity, r.e);
        return this.c;
    }

    public ck1 b() {
        return this.b;
    }

    public void setAdEventCallback(BannerAdEventCallback bannerAdEventCallback) {
        b().j().a(bannerAdEventCallback);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final AdSize getAdSize() {
        return b().m();
    }
}
