package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import com.google.gson.Gson;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f93 implements oe3 {
    public final List a;

    public f93(List rtbAdapterDataList) {
        Intrinsics.checkNotNullParameter(rtbAdapterDataList, "rtbAdapterDataList");
        this.a = rtbAdapterDataList;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.realTimeBiddingSignals = new Gson().toJson(this.a);
        signals.a(this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f93) && Intrinsics.areEqual(this.a, ((f93) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "RtbSignal(rtbAdapterDataList=" + this.a + ")";
    }
}
