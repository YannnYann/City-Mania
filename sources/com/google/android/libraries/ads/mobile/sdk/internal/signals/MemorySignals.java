package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MemorySignals {

    @SerializedName("runtime_free")
    public Long runtimeFreeMemory;

    @SerializedName("runtime_max")
    public Long runtimeMaxMemory;

    @SerializedName("runtime_total")
    public Long runtimeTotalMemory;

    @SerializedName("web_view_count")
    public Integer webviewCount;

    public MemorySignals() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MemorySignals)) {
            return false;
        }
        MemorySignals memorySignals = (MemorySignals) obj;
        return Intrinsics.areEqual(this.runtimeFreeMemory, memorySignals.runtimeFreeMemory) && Intrinsics.areEqual(this.runtimeMaxMemory, memorySignals.runtimeMaxMemory) && Intrinsics.areEqual(this.runtimeTotalMemory, memorySignals.runtimeTotalMemory) && Intrinsics.areEqual(this.webviewCount, memorySignals.webviewCount);
    }

    public final int hashCode() {
        Long l = this.runtimeFreeMemory;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.runtimeMaxMemory;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.runtimeTotalMemory;
        int iHashCode3 = (iHashCode2 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Integer num = this.webviewCount;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        return "MemorySignals(runtimeFreeMemory=" + this.runtimeFreeMemory + ", runtimeMaxMemory=" + this.runtimeMaxMemory + ", runtimeTotalMemory=" + this.runtimeTotalMemory + ", webviewCount=" + this.webviewCount + ")";
    }

    public MemorySignals(Long l, Long l2, Long l3, Integer num) {
        this.runtimeFreeMemory = l;
        this.runtimeMaxMemory = l2;
        this.runtimeTotalMemory = l3;
        this.webviewCount = num;
    }

    public /* synthetic */ MemorySignals(int i) {
        this(null, null, null, null);
    }
}
