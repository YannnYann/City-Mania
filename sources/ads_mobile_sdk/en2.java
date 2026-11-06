package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class en2 implements oe3 {
    public final dn2 a;

    public en2(dn2 orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.a = orientation;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.phoneOrientation = Integer.valueOf(this.a.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof en2) && this.a == ((en2) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "PhoneOrientationSignal(orientation=" + this.a + ")";
    }
}
