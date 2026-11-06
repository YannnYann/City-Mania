package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.ob;
import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdSourceResponseInfo {

    @SerializedName("Adapter")
    private final String a;

    @SerializedName("Latency")
    private final long b;

    @SerializedName("Error")
    private final MediationAdError c;

    @SerializedName("Credentials")
    private final Bundle d;

    @SerializedName("Ad Source Name")
    private final String e;

    @SerializedName("Ad Source ID")
    private final String f;

    @SerializedName("Ad Source Instance Name")
    private final String g;

    @SerializedName("Ad Source Instance ID")
    private final String h;

    public AdSourceResponseInfo(String adapterClassName, long j, MediationAdError mediationAdError, Bundle credentials, String name, String id, String instanceName, String instanceId) {
        Intrinsics.checkNotNullParameter(adapterClassName, "adapterClassName");
        Intrinsics.checkNotNullParameter(credentials, "credentials");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(instanceId, "instanceId");
        this.a = adapterClassName;
        this.b = j;
        this.c = mediationAdError;
        this.d = credentials;
        this.e = name;
        this.f = id;
        this.g = instanceName;
        this.h = instanceId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSourceResponseInfo)) {
            return false;
        }
        AdSourceResponseInfo adSourceResponseInfo = (AdSourceResponseInfo) obj;
        return Intrinsics.areEqual(this.a, adSourceResponseInfo.a) && this.b == adSourceResponseInfo.b && Intrinsics.areEqual(this.c, adSourceResponseInfo.c) && Intrinsics.areEqual(this.d, adSourceResponseInfo.d) && Intrinsics.areEqual(this.e, adSourceResponseInfo.e) && Intrinsics.areEqual(this.f, adSourceResponseInfo.f) && Intrinsics.areEqual(this.g, adSourceResponseInfo.g) && Intrinsics.areEqual(this.h, adSourceResponseInfo.h);
    }

    public final MediationAdError getAdError() {
        return this.c;
    }

    public final String getAdapterClassName() {
        return this.a;
    }

    public final Bundle getCredentials() {
        return this.d;
    }

    public final String getId() {
        return this.f;
    }

    public final String getInstanceId() {
        return this.h;
    }

    public final String getInstanceName() {
        return this.g;
    }

    public final long getLatencyMillis() {
        return this.b;
    }

    public final String getName() {
        return this.e;
    }

    public int hashCode() {
        int iHashCode = (Long.hashCode(this.b) + (this.a.hashCode() * 31)) * 31;
        MediationAdError mediationAdError = this.c;
        return this.h.hashCode() + ob.a(this.g, ob.a(this.f, ob.a(this.e, (this.d.hashCode() + ((iHashCode + (mediationAdError == null ? 0 : mediationAdError.hashCode())) * 31)) * 31, 31), 31), 31);
    }

    public String toString() {
        String json = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }
}
