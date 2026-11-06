package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialSignalRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dg3 implements jr0 {
    public final dw2 a;

    public dg3(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        SignalRequest signalRequest = (SignalRequest) this.a.get();
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        return signalRequest instanceof BannerSignalRequest ? j53.f : signalRequest instanceof IconSignalRequest ? j53.g : signalRequest instanceof InterstitialSignalRequest ? j53.h : signalRequest instanceof NativeSignalRequest ? j53.i : signalRequest instanceof RewardedSignalRequest ? j53.j : signalRequest instanceof SwipeableInterstitialSignalRequest ? j53.l : j53.d;
    }
}
