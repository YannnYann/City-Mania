package ads_mobile_sdk;

import android.view.View;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qv1 extends tc1 implements jf {
    public View b;
    public p12 c;
    public MediationInterstitialAd d;
    public MediationRewardedAd e;
    public MediationAppOpenAd f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qv1(Adapter adapter) {
        super(adapter);
        Intrinsics.checkNotNullParameter(adapter, "adapter");
    }
}
