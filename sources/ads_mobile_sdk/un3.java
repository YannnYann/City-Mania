package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.DeviceSignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class un3 implements oe3 {
    public final String a;
    public final int b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;

    public un3(String carrierCode, int i, int i2, int i3, boolean z, int i4) {
        Intrinsics.checkNotNullParameter(carrierCode, "carrierCode");
        this.a = carrierCode;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof un3)) {
            return false;
        }
        un3 un3Var = (un3) obj;
        return Intrinsics.areEqual(this.a, un3Var.a) && this.b == un3Var.b && this.c == un3Var.c && this.d == un3Var.d && this.e == un3Var.e && this.f == un3Var.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    public final int hashCode() {
        int iA = y1.a(this.d, y1.a(this.c, y1.a(this.b, this.a.hashCode() * 31, 31), 31), 31);
        boolean z = this.e;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        return Integer.hashCode(this.f) + ((iA + r2) * 31);
    }

    public final String toString() {
        return "TelephonySignal(carrierCode=" + this.a + ", networkTypeCoarse=" + this.b + ", networkTypeFine=" + this.c + ", phoneType=" + this.d + ", isActiveNetworkMetered=" + this.e + ", activeNetworkState=" + this.f + ")";
    }

    public final int a() {
        return this.c;
    }

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.carrierCode = this.a;
        signals.networkTypeCoarse = Integer.valueOf(this.b);
        signals.networkTypeFine = Integer.valueOf(this.c);
        signals.phoneType = Integer.valueOf(this.d);
        DeviceSignals deviceSignals = signals.deviceSignals;
        deviceSignals.networkSignals.isActiveNetworkMetered = Boolean.valueOf(this.e);
        deviceSignals.networkSignals.activeNetworkState = Integer.valueOf(this.f);
    }

    public final int b() {
        return this.b;
    }
}
