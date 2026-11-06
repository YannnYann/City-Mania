package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceSignals {

    @SerializedName("battery")
    public final BatterySignals batterySignals;

    @SerializedName("browser")
    public final BrowserSignals browserSignals;

    @SerializedName("build")
    public String buildName;

    @SerializedName("device_tier")
    public final DeviceTierSignals deviceTierSignals;

    @SerializedName("android_mem_info")
    public MemorySignals memorySignals;

    @SerializedName("network")
    public final NetworkSignals networkSignals;

    @SerializedName("play_store")
    public final PlayStoreSignals playStoreSignals;

    @SerializedName("remaining_data_partition_space")
    public Long remainingDataPartitionSpaceKilobytes;

    public DeviceSignals() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceSignals)) {
            return false;
        }
        DeviceSignals deviceSignals = (DeviceSignals) obj;
        return Intrinsics.areEqual(this.batterySignals, deviceSignals.batterySignals) && Intrinsics.areEqual(this.browserSignals, deviceSignals.browserSignals) && Intrinsics.areEqual(this.memorySignals, deviceSignals.memorySignals) && Intrinsics.areEqual(this.deviceTierSignals, deviceSignals.deviceTierSignals) && Intrinsics.areEqual(this.networkSignals, deviceSignals.networkSignals) && Intrinsics.areEqual(this.playStoreSignals, deviceSignals.playStoreSignals) && Intrinsics.areEqual(this.buildName, deviceSignals.buildName) && Intrinsics.areEqual(this.remainingDataPartitionSpaceKilobytes, deviceSignals.remainingDataPartitionSpaceKilobytes);
    }

    public final int hashCode() {
        int iHashCode = (this.playStoreSignals.hashCode() + ((this.networkSignals.hashCode() + ((this.deviceTierSignals.hashCode() + ((this.memorySignals.hashCode() + ((this.browserSignals.hashCode() + (this.batterySignals.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.buildName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.remainingDataPartitionSpaceKilobytes;
        return iHashCode2 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "DeviceSignals(batterySignals=" + this.batterySignals + ", browserSignals=" + this.browserSignals + ", memorySignals=" + this.memorySignals + ", deviceTierSignals=" + this.deviceTierSignals + ", networkSignals=" + this.networkSignals + ", playStoreSignals=" + this.playStoreSignals + ", buildName=" + this.buildName + ", remainingDataPartitionSpaceKilobytes=" + this.remainingDataPartitionSpaceKilobytes + ")";
    }

    public DeviceSignals(BatterySignals batterySignals, BrowserSignals browserSignals, MemorySignals memorySignals, DeviceTierSignals deviceTierSignals, NetworkSignals networkSignals, PlayStoreSignals playStoreSignals, String str, Long l) {
        Intrinsics.checkNotNullParameter(batterySignals, "batterySignals");
        Intrinsics.checkNotNullParameter(browserSignals, "browserSignals");
        Intrinsics.checkNotNullParameter(memorySignals, "memorySignals");
        Intrinsics.checkNotNullParameter(deviceTierSignals, "deviceTierSignals");
        Intrinsics.checkNotNullParameter(networkSignals, "networkSignals");
        Intrinsics.checkNotNullParameter(playStoreSignals, "playStoreSignals");
        this.batterySignals = batterySignals;
        this.browserSignals = browserSignals;
        this.memorySignals = memorySignals;
        this.deviceTierSignals = deviceTierSignals;
        this.networkSignals = networkSignals;
        this.playStoreSignals = playStoreSignals;
        this.buildName = str;
        this.remainingDataPartitionSpaceKilobytes = l;
    }

    public /* synthetic */ DeviceSignals(int i) {
        this(new BatterySignals(0), new BrowserSignals(0), new MemorySignals(0), new DeviceTierSignals(0), new NetworkSignals(0), new PlayStoreSignals(0), null, null);
    }
}
