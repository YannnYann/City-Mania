package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bd implements AdLoadCallback {
    public final /* synthetic */ AdLoadCallback a;
    public final /* synthetic */ AdView b;

    public bd(AdLoadCallback adLoadCallback, AdView adView) {
        this.a = adLoadCallback;
        this.b = adView;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        this.a.onAdFailedToLoad(adError);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public final void onAdLoaded(Object obj) {
        BannerAd ad = (BannerAd) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        a01.a.getClass();
        BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ((vf0) zz0.a()).u.get(), null, null, new ad(this.a, ad, this.b, null), 3, null);
    }
}
