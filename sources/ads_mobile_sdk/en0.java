package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.DeviceTierSignals;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class en0 implements oe3 {
    public final Integer a;
    public final Integer b;
    public final Integer c;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        DeviceTierSignals deviceTierSignals = signals.deviceSignals.deviceTierSignals;
        deviceTierSignals.advertisedMemoryTier = this.a;
        deviceTierSignals.availableMemoryTier = this.b;
        deviceTierSignals.availableProcessorsTier = this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof en0)) {
            return false;
        }
        en0 en0Var = (en0) obj;
        return Intrinsics.areEqual(this.a, en0Var.a) && Intrinsics.areEqual(this.b, en0Var.b) && Intrinsics.areEqual(this.c, en0Var.c);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.b;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.c;
        return iHashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    public final String toString() {
        return "DeviceTierSignal(advertisedMemoryTier=" + this.a + ", availableMemoryTier=" + this.b + ", availableProcessorsTier=" + this.c + ")";
    }

    public en0(Integer num, Integer num2, Integer num3) {
        this.a = num;
        this.b = num2;
        this.c = num3;
    }
}
