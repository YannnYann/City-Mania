package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdapterVersionData {

    @SerializedName("adapter_version")
    public final String adapterVersion;

    @SerializedName("sdk_version")
    public final String sdkVersion;

    public AdapterVersionData(String str, String str2) {
        this.adapterVersion = str;
        this.sdkVersion = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdapterVersionData)) {
            return false;
        }
        AdapterVersionData adapterVersionData = (AdapterVersionData) obj;
        return Intrinsics.areEqual(this.adapterVersion, adapterVersionData.adapterVersion) && Intrinsics.areEqual(this.sdkVersion, adapterVersionData.sdkVersion);
    }

    public final int hashCode() {
        String str = this.adapterVersion;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.sdkVersion;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "AdapterVersionData(adapterVersion=" + this.adapterVersion + ", sdkVersion=" + this.sdkVersion + ")";
    }
}
