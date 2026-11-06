package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cw1 implements MediationAdLoadCallback {
    public final /* synthetic */ Function1 a;
    public final /* synthetic */ bv1 b;
    public final /* synthetic */ hm0 c;

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        ((do3) this.b).a(adError);
    }

    public cw1(hm0 hm0Var, do3 do3Var, Function1 function1) {
        this.a = function1;
        this.b = do3Var;
        this.c = hm0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final Object onSuccess(Object obj) {
        NativeAdMapper ad = (NativeAdMapper) obj;
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.a.invoke(ad);
        ((do3) this.b).f();
        return new bw1(this.c);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String failure) {
        Intrinsics.checkNotNullParameter(failure, "failure");
        ((do3) this.b).a(new AdError(0, failure, AdError.UNDEFINED_DOMAIN));
    }
}
