package ads_mobile_sdk;

import android.view.View;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class u83 extends tc1 implements jf {
    public final RtbAdapter b;
    public View c;
    public p12 d;
    public MediationInterstitialAd e;
    public MediationRewardedAd f;
    public MediationAppOpenAd g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u83(RtbAdapter rtbAdapter) {
        super(rtbAdapter);
        Intrinsics.checkNotNullParameter(rtbAdapter, "rtbAdapter");
        this.b = rtbAdapter;
    }
}
