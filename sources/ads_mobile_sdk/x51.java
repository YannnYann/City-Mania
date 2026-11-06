package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x51 implements oe3 {
    public final w51 a;

    public x51(w51 holdingHand) {
        Intrinsics.checkNotNullParameter(holdingHand, "holdingHand");
        this.a = holdingHand;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.holdingHand = this.a.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x51) && this.a == ((x51) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "HandSignal(holdingHand=" + this.a + ")";
    }
}
