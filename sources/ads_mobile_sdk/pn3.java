package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pn3 implements oe3 {
    public final boolean a;
    public final Integer b;
    public final Boolean c;
    public final Integer d;
    public final Boolean e;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        if (this.a) {
            signals.isSwipeableInterstitial = Boolean.TRUE;
            signals.maxScreenHoldDurationSeconds = this.b;
            Boolean bool = this.c;
            if (bool == null || !bool.booleanValue()) {
                bool = null;
            }
            signals.customClickGestureEnabled = bool;
            Integer num = this.d;
            signals.customClickGestureDirection = num;
            signals.customClickGestureAllowTaps = num != null ? this.e : null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pn3)) {
            return false;
        }
        pn3 pn3Var = (pn3) obj;
        return this.a == pn3Var.a && Intrinsics.areEqual(this.b, pn3Var.b) && Intrinsics.areEqual(this.c, pn3Var.c) && Intrinsics.areEqual(this.d, pn3Var.d) && Intrinsics.areEqual(this.e, pn3Var.e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    public final int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        Integer num = this.b;
        int iHashCode = (i + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.c;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num2 = this.d;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Boolean bool2 = this.e;
        return iHashCode3 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public final String toString() {
        return "SwipeableInterstitialSignal(isSwipeableInterstitial=" + this.a + ", maxScreenHoldDurationSeconds=" + this.b + ", customClickGestureEnabled=" + this.c + ", customClickSwipeGestureDirection=" + this.d + ", customClickSwipeGestureTapsAllowed=" + this.e + ")";
    }

    public pn3(boolean z, Integer num, Boolean bool, Integer num2, Boolean bool2) {
        this.a = z;
        this.b = num;
        this.c = bool;
        this.d = num2;
        this.e = bool2;
    }
}
