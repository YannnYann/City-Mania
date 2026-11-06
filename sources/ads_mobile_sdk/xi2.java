package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xi2 implements oe3 {
    public final m13 a;

    public xi2(m13 recursiveAdData) {
        Intrinsics.checkNotNullParameter(recursiveAdData, "recursiveAdData");
        this.a = recursiveAdData;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        m13 m13Var = this.a;
        signals.parentAdConfig = m13Var.a;
        signals.parentCommonConfig = m13Var.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xi2) && Intrinsics.areEqual(this.a, ((xi2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ParentAdConfigSignal(recursiveAdData=" + this.a + ")";
    }
}
