package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oc2 implements MediationInterstitialListener {
    public final /* synthetic */ rc2 a;
    public final /* synthetic */ bv1 b;
    public final /* synthetic */ hm0 c;

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.d();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter adapter) throws InterruptedException {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.b();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter adapter, int i) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        do3 do3Var = (do3) this.b;
        String errorMessage = do3Var.c.a(i);
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        do3Var.a(new AdError(i, errorMessage, AdError.UNDEFINED_DOMAIN));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.a();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        rc2 rc2Var = this.a;
        rc2Var.getClass();
        Intrinsics.checkNotNullParameter(adapter, "<set-?>");
        rc2Var.d = adapter;
        ((do3) this.b).f();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter adapter) throws InterruptedException {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.c.c();
    }

    public oc2(hm0 hm0Var, do3 do3Var, rc2 rc2Var) {
        this.a = rc2Var;
        this.b = do3Var;
        this.c = hm0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter adapter, AdError adError) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(adError, "adError");
        ((do3) this.b).a(adError);
    }
}
