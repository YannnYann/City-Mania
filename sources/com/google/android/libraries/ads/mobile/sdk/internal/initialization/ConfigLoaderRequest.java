package com.google.android.libraries.ads.mobile.sdk.internal.initialization;

import ads_mobile_sdk.ob;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ConfigLoaderRequest {

    @SerializedName("ad_unit_id")
    public final String adUnitId;

    @SerializedName("js")
    public final String afmaVersion;

    @SerializedName("app_id")
    public final String appId;

    @SerializedName("experiment_ids")
    public final String experimentIds;

    @SerializedName("is_init")
    public final boolean isCalledFromInit;

    @SerializedName("pn")
    public final String packageName;

    @SerializedName("version")
    public final Integer versionCode;

    public ConfigLoaderRequest(String appId, String str, boolean z, String packageName, Integer num, String afmaVersion, String experimentIds) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(experimentIds, "experimentIds");
        this.appId = appId;
        this.adUnitId = str;
        this.isCalledFromInit = z;
        this.packageName = packageName;
        this.versionCode = num;
        this.afmaVersion = afmaVersion;
        this.experimentIds = experimentIds;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigLoaderRequest)) {
            return false;
        }
        ConfigLoaderRequest configLoaderRequest = (ConfigLoaderRequest) obj;
        return Intrinsics.areEqual(this.appId, configLoaderRequest.appId) && Intrinsics.areEqual(this.adUnitId, configLoaderRequest.adUnitId) && this.isCalledFromInit == configLoaderRequest.isCalledFromInit && Intrinsics.areEqual(this.packageName, configLoaderRequest.packageName) && Intrinsics.areEqual(this.versionCode, configLoaderRequest.versionCode) && Intrinsics.areEqual(this.afmaVersion, configLoaderRequest.afmaVersion) && Intrinsics.areEqual(this.experimentIds, configLoaderRequest.experimentIds);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final int hashCode() {
        int iHashCode = this.appId.hashCode() * 31;
        String str = this.adUnitId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z = this.isCalledFromInit;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int iA = ob.a(this.packageName, (iHashCode2 + r2) * 31, 31);
        Integer num = this.versionCode;
        return this.experimentIds.hashCode() + ob.a(this.afmaVersion, (iA + (num != null ? num.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        return "ConfigLoaderRequest(appId=" + this.appId + ", adUnitId=" + this.adUnitId + ", isCalledFromInit=" + this.isCalledFromInit + ", packageName=" + this.packageName + ", versionCode=" + this.versionCode + ", afmaVersion=" + this.afmaVersion + ", experimentIds=" + this.experimentIds + ")";
    }
}
