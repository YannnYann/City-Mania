package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.PersonallyIdentifiableInformation;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qj2 implements oe3 {
    public final pj2 a;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        u41 u41Var;
        String str;
        Intrinsics.checkNotNullParameter(signals, "signals");
        pj2 pj2Var = this.a;
        if (pj2Var == null || (u41Var = pj2Var.a) == null || (str = u41Var.a) == null) {
            return;
        }
        long j = u41Var.b;
        if (j > 0) {
            PersonallyIdentifiableInformation personallyIdentifiableInformation = signals.personallyIdentifiableInformation;
            personallyIdentifiableInformation.perAppIdV2 = str;
            personallyIdentifiableInformation.paidV2CreationTimeMilliseconds = Long.valueOf(j);
            personallyIdentifiableInformation.paidV2PubOption = Boolean.valueOf(this.a.b);
            personallyIdentifiableInformation.paidV2UserOption = Boolean.valueOf(this.a.c);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qj2) && Intrinsics.areEqual(this.a, ((qj2) obj).a);
    }

    public final int hashCode() {
        pj2 pj2Var = this.a;
        if (pj2Var == null) {
            return 0;
        }
        return pj2Var.hashCode();
    }

    public final String toString() {
        return "PerAppIdV2Signal(paidV2=" + this.a + ")";
    }

    public qj2(pj2 pj2Var) {
        this.a = pj2Var;
    }
}
