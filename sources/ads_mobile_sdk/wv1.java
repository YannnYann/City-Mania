package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wv1 implements MediationAdLoadCallback {
    public final /* synthetic */ bv1 a;
    public final /* synthetic */ Function1 b;
    public final /* synthetic */ hm0 c;

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        ((do3) this.a).a(adError);
    }

    public wv1(hm0 hm0Var, do3 do3Var, Function1 function1) {
        this.a = do3Var;
        this.b = function1;
        this.c = hm0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final Object onSuccess(Object obj) {
        MediationAppOpenAd ad = (MediationAppOpenAd) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        ((do3) this.a).f();
        this.b.invoke(ad);
        return new vv1(this.c);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String failure) {
        Intrinsics.checkNotNullParameter(failure, "failure");
        ((do3) this.a).a(new AdError(0, failure, AdError.UNDEFINED_DOMAIN));
    }
}
