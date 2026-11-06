package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.PersonallyIdentifiableInformation;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lj2 implements oe3 {
    public final u41 a;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        String str;
        Intrinsics.checkNotNullParameter(signals, "signals");
        u41 u41Var = this.a;
        if (u41Var == null || (str = u41Var.a) == null) {
            return;
        }
        long j = u41Var.b;
        if (j > 0) {
            long j2 = (j - 978307200000L) / ((long) 1000);
            PersonallyIdentifiableInformation personallyIdentifiableInformation = signals.personallyIdentifiableInformation;
            personallyIdentifiableInformation.perAppIdV1 = str;
            personallyIdentifiableInformation.paidV1CreationTimeMilliseconds = Long.valueOf(j);
            personallyIdentifiableInformation.paidV1CreationTimeSeconds = j2 < 0 ? 0L : Long.valueOf(j2);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof lj2) && Intrinsics.areEqual(this.a, ((lj2) obj).a);
    }

    public final int hashCode() {
        u41 u41Var = this.a;
        if (u41Var == null) {
            return 0;
        }
        return u41Var.hashCode();
    }

    public final String toString() {
        return "PerAppIdV1Signal(paidV1Info=" + this.a + ")";
    }

    public lj2(u41 u41Var) {
        this.a = u41Var;
    }
}
