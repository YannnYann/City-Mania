package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class yq0 implements oe3 {
    public final String a;

    public yq0(String experimentIds) {
        Intrinsics.checkNotNullParameter(experimentIds, "experimentIds");
        this.a = experimentIds;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        if (StringsKt__StringsKt.isBlank(this.a)) {
            return;
        }
        signals.experimentIds = this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yq0) && Intrinsics.areEqual(this.a, ((yq0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ExperimentIdsSignal(experimentIds=" + this.a + ")";
    }
}
