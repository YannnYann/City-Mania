package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceTierSignals {

    @SerializedName("ad_mem_tier")
    public Integer advertisedMemoryTier;

    @SerializedName("avai_mem_tier")
    public Integer availableMemoryTier;

    @SerializedName("avai_proc_tier")
    public Integer availableProcessorsTier;

    public DeviceTierSignals() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceTierSignals)) {
            return false;
        }
        DeviceTierSignals deviceTierSignals = (DeviceTierSignals) obj;
        return Intrinsics.areEqual(this.advertisedMemoryTier, deviceTierSignals.advertisedMemoryTier) && Intrinsics.areEqual(this.availableMemoryTier, deviceTierSignals.availableMemoryTier) && Intrinsics.areEqual(this.availableProcessorsTier, deviceTierSignals.availableProcessorsTier);
    }

    public final int hashCode() {
        Integer num = this.advertisedMemoryTier;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Integer num2 = this.availableMemoryTier;
        int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.availableProcessorsTier;
        return iHashCode2 + (num3 != null ? num3.hashCode() : 0);
    }

    public final String toString() {
        return "DeviceTierSignals(advertisedMemoryTier=" + this.advertisedMemoryTier + ", availableMemoryTier=" + this.availableMemoryTier + ", availableProcessorsTier=" + this.availableProcessorsTier + ")";
    }

    public DeviceTierSignals(Integer num, Integer num2, Integer num3) {
        this.advertisedMemoryTier = num;
        this.availableMemoryTier = num2;
        this.availableProcessorsTier = num3;
    }

    public /* synthetic */ DeviceTierSignals(int i) {
        this(null, null, null);
    }
}
