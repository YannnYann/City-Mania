package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class op1 implements oe3 {
    public final Boolean a;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        Boolean bool = this.a;
        if (bool != null) {
            signals.isDeviceHeld = bool;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof op1) && Intrinsics.areEqual(this.a, ((op1) obj).a);
    }

    public final int hashCode() {
        Boolean bool = this.a;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public final String toString() {
        return "IsDeviceHeldSignal(isHeld=" + this.a + ")";
    }

    public op1(Boolean bool) {
        this.a = bool;
    }
}
