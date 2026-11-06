package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tb implements oe3 {
    public final String a;

    public tb(String querySignal) {
        Intrinsics.checkNotNullParameter(querySignal, "querySignal");
        this.a = querySignal;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.adShieldSignal = this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tb) && Intrinsics.areEqual(this.a, ((tb) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "AdSpamSignal(querySignal=" + this.a + ")";
    }
}
