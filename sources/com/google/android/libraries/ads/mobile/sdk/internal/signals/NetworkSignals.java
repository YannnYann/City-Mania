package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkSignals {

    @SerializedName("active_network_state")
    public Integer activeNetworkState;

    @SerializedName("active_network_metered")
    public Boolean isActiveNetworkMetered;

    public NetworkSignals() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkSignals)) {
            return false;
        }
        NetworkSignals networkSignals = (NetworkSignals) obj;
        return Intrinsics.areEqual(this.activeNetworkState, networkSignals.activeNetworkState) && Intrinsics.areEqual(this.isActiveNetworkMetered, networkSignals.isActiveNetworkMetered);
    }

    public final int hashCode() {
        Integer num = this.activeNetworkState;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Boolean bool = this.isActiveNetworkMetered;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkSignals(activeNetworkState=" + this.activeNetworkState + ", isActiveNetworkMetered=" + this.isActiveNetworkMetered + ")";
    }

    public NetworkSignals(Integer num, Boolean bool) {
        this.activeNetworkState = num;
        this.isActiveNetworkMetered = bool;
    }

    public /* synthetic */ NetworkSignals(int i) {
        this(null, null);
    }
}
