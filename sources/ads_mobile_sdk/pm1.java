package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pm1 extends ei1 {
    public static final nm1 b = new nm1();
    public final NativeAdLoaderCallback a;

    public pm1(NativeAdLoaderCallback loadCallback) {
        Intrinsics.checkNotNullParameter(loadCallback, "loadCallback");
        this.a = loadCallback;
    }

    @Override // ads_mobile_sdk.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.onAdFailedToLoad(error);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // ads_mobile_sdk.ei1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(ads_mobile_sdk.xz1 r6, kotlin.coroutines.Continuation r7) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.pm1.a(ads_mobile_sdk.xz1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.ei1
    public final void a() {
        this.a.onAdLoadingCompleted();
    }
}
