package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdUnitQualitySignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.QualitySignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c13 implements oe3 {
    public final AppStats a;
    public final int b;
    public final AdUnitQualitySignals c;

    public c13(AppStats appStats, int i, AdUnitQualitySignals adUnitQualitySignals) {
        Intrinsics.checkNotNullParameter(appStats, "appStats");
        Intrinsics.checkNotNullParameter(adUnitQualitySignals, "adUnitQualitySignals");
        this.a = appStats;
        this.b = i;
        this.c = adUnitQualitySignals;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        int i = this.b;
        if (i > 0) {
            signals.numberOfRegisteredWebViews = Integer.valueOf(i);
        }
        signals.qualitySignals = new QualitySignals(this.a);
        signals.adUnitQualitySignals = this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c13)) {
            return false;
        }
        c13 c13Var = (c13) obj;
        return Intrinsics.areEqual(this.a, c13Var.a) && this.b == c13Var.b && Intrinsics.areEqual(this.c, c13Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + y1.a(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "QualitySignal(appStats=" + this.a + ", numberOfRegisteredWebViews=" + this.b + ", adUnitQualitySignals=" + this.c + ")";
    }
}
