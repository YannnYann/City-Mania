package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes3.dex */
public final class BatterySignals {

    @SerializedName("battery_level")
    public double batteryLevel;

    @SerializedName("is_charging")
    public boolean isCharging;

    public BatterySignals() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BatterySignals)) {
            return false;
        }
        BatterySignals batterySignals = (BatterySignals) obj;
        return this.isCharging == batterySignals.isCharging && Double.compare(this.batteryLevel, batterySignals.batteryLevel) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final int hashCode() {
        boolean z = this.isCharging;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return Double.hashCode(this.batteryLevel) + (r0 * 31);
    }

    public final String toString() {
        return "BatterySignals(isCharging=" + this.isCharging + ", batteryLevel=" + this.batteryLevel + ")";
    }

    public BatterySignals(double d, boolean z) {
        this.isCharging = z;
        this.batteryLevel = d;
    }

    public /* synthetic */ BatterySignals(int i) {
        this(0.0d, false);
    }
}
