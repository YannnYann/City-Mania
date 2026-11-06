package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fa3 implements oe3 {
    public final String a;

    public fa3(String signalType) {
        Intrinsics.checkNotNullParameter(signalType, "signalType");
        this.a = signalType;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.signalType = this.a;
        signals.isScarRequest = Boolean.TRUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fa3) && Intrinsics.areEqual(this.a, ((fa3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ScarSignalTypeSignal(signalType=" + this.a + ")";
    }
}
