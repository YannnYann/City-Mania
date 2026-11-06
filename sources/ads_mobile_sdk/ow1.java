package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.MemorySignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ow1 implements oe3 {
    public final long a;
    public final long b;
    public final long c;
    public final int d;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        MemorySignals memorySignals = signals.deviceSignals.memorySignals;
        memorySignals.runtimeFreeMemory = Long.valueOf(this.a);
        memorySignals.runtimeMaxMemory = Long.valueOf(this.b);
        memorySignals.runtimeTotalMemory = Long.valueOf(this.c);
        memorySignals.webviewCount = Integer.valueOf(this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ow1)) {
            return false;
        }
        ow1 ow1Var = (ow1) obj;
        return this.a == ow1Var.a && this.b == ow1Var.b && this.c == ow1Var.c && this.d == ow1Var.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ((Long.hashCode(this.c) + ((Long.hashCode(this.b) + (Long.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "MemorySignal(runtimeFreeMemory=" + this.a + ", runtimeMaxMemory=" + this.b + ", runtimeTotalMemory=" + this.c + ", webviewCount=" + this.d + ")";
    }

    public ow1(long j, long j2, long j3, int i) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = i;
    }
}
