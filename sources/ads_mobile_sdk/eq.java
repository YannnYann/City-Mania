package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class eq implements Ad {
    public final zh1 a;

    public eq(zh1 internalAd) {
        Intrinsics.checkNotNullParameter(internalAd, "internalAd");
        this.a = internalAd;
    }

    public zh1 a() {
        return this.a;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.Ad
    public final ResponseInfo getResponseInfo() {
        return a().getResponseInfo();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.Ad
    public void destroy() {
        a().destroy();
    }
}
