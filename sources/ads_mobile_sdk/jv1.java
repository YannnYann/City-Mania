package ads_mobile_sdk;

import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class jv1 extends Lambda implements Function1 {
    public final /* synthetic */ qv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jv1(qv1 qv1Var) {
        super(1);
        this.a = qv1Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Unit unit;
        MediationAppOpenAd mediationAd = (MediationAppOpenAd) obj;
        Intrinsics.checkNotNullParameter(mediationAd, "mediationAd");
        qv1 qv1Var = this.a;
        synchronized (qv1Var) {
            Intrinsics.checkNotNullParameter(mediationAd, "<set-?>");
            qv1Var.f = mediationAd;
            unit = Unit.INSTANCE;
        }
        return unit;
    }
}
