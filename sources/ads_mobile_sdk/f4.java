package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class f4 implements oe3 {
    public final boolean a;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.adIdPermission = this.a ? "1" : "0";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f4) && this.a == ((f4) obj).a;
    }

    public final int hashCode() {
        boolean z = this.a;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public final String toString() {
        return "AdIdPermissionSignal(adIdPermissionStatus=" + this.a + ")";
    }

    public f4(boolean z) {
        this.a = z;
    }
}
