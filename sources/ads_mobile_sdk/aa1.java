package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class aa1 implements oe3 {
    public final Map a;

    public aa1(Map inMemorySdkCoreData) {
        Intrinsics.checkNotNullParameter(inMemorySdkCoreData, "inMemorySdkCoreData");
        this.a = inMemorySdkCoreData;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        if (this.a.isEmpty()) {
            return;
        }
        signals.inMemorySdkCoreData = this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof aa1) && Intrinsics.areEqual(this.a, ((aa1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "InMemorySdkCoreDataSignal(inMemorySdkCoreData=" + this.a + ")";
    }
}
