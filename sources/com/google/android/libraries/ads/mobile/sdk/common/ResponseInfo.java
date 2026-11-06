package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ResponseInfo {

    @SerializedName("Mediation Adapter Class Name")
    private final String a;

    @SerializedName("Response ID")
    private final String b;

    @SerializedName("Response Extras")
    private final Bundle c;

    @SerializedName("Loaded Ad Source Response Info")
    private final AdSourceResponseInfo d;

    @SerializedName("Ad Source Responses")
    private final List<AdSourceResponseInfo> e;

    public ResponseInfo(String str, String str2, Bundle responseExtras, AdSourceResponseInfo adSourceResponseInfo, List<AdSourceResponseInfo> adSourceResponses) {
        Intrinsics.checkNotNullParameter(responseExtras, "responseExtras");
        Intrinsics.checkNotNullParameter(adSourceResponses, "adSourceResponses");
        this.a = str;
        this.b = str2;
        this.c = responseExtras;
        this.d = adSourceResponseInfo;
        this.e = adSourceResponses;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResponseInfo)) {
            return false;
        }
        ResponseInfo responseInfo = (ResponseInfo) obj;
        return Intrinsics.areEqual(this.a, responseInfo.a) && Intrinsics.areEqual(this.b, responseInfo.b) && Intrinsics.areEqual(this.c, responseInfo.c) && Intrinsics.areEqual(this.d, responseInfo.d) && Intrinsics.areEqual(this.e, responseInfo.e);
    }

    public final List<AdSourceResponseInfo> getAdSourceResponses() {
        return this.e;
    }

    public final String getAdapterClassName() {
        return this.a;
    }

    public final AdSourceResponseInfo getLoadedAdSourceResponseInfo() {
        return this.d;
    }

    public final String getResponseId() {
        return this.b;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (this.c.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
        AdSourceResponseInfo adSourceResponseInfo = this.d;
        return this.e.hashCode() + ((iHashCode2 + (adSourceResponseInfo != null ? adSourceResponseInfo.hashCode() : 0)) * 31);
    }

    public String toString() {
        String json = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }
}
