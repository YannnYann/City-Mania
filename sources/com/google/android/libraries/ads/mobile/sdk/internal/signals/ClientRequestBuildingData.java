package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import com.ironsource.Cc;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientRequestBuildingData {

    @SerializedName("c_params")
    public String cParams;

    @SerializedName("cookies_include")
    public Boolean cookiesInclude;

    @SerializedName(Cc.a.g)
    public String error;

    @SerializedName("params")
    public String params;

    @SerializedName("post_body")
    public String postBody;

    @SerializedName("request_id")
    public String requestId;

    @SerializedName("signals")
    public Signals signals;

    @SerializedName("url")
    public String url;

    public ClientRequestBuildingData() {
        this(null, null, null, null, null, null, 255);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientRequestBuildingData)) {
            return false;
        }
        ClientRequestBuildingData clientRequestBuildingData = (ClientRequestBuildingData) obj;
        return Intrinsics.areEqual(this.signals, clientRequestBuildingData.signals) && Intrinsics.areEqual(this.url, clientRequestBuildingData.url) && Intrinsics.areEqual(this.postBody, clientRequestBuildingData.postBody) && Intrinsics.areEqual(this.error, clientRequestBuildingData.error) && Intrinsics.areEqual(this.cookiesInclude, clientRequestBuildingData.cookiesInclude) && Intrinsics.areEqual(this.requestId, clientRequestBuildingData.requestId) && Intrinsics.areEqual(this.params, clientRequestBuildingData.params) && Intrinsics.areEqual(this.cParams, clientRequestBuildingData.cParams);
    }

    public final int hashCode() {
        Signals signals = this.signals;
        int iHashCode = (signals == null ? 0 : signals.hashCode()) * 31;
        String str = this.url;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.postBody;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.error;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.cookiesInclude;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.requestId;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.params;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.cParams;
        return iHashCode7 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        return "ClientRequestBuildingData(signals=" + this.signals + ", url=" + this.url + ", postBody=" + this.postBody + ", error=" + this.error + ", cookiesInclude=" + this.cookiesInclude + ", requestId=" + this.requestId + ", params=" + this.params + ", cParams=" + this.cParams + ")";
    }

    public ClientRequestBuildingData(Signals signals, String str, String str2, String str3, Boolean bool, String str4, String str5, String str6) {
        this.signals = signals;
        this.url = str;
        this.postBody = str2;
        this.error = str3;
        this.cookiesInclude = bool;
        this.requestId = str4;
        this.params = str5;
        this.cParams = str6;
    }

    public /* synthetic */ ClientRequestBuildingData(String str, String str2, String str3, Boolean bool, String str4, String str5, int i) {
        this(null, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? null : str4, null, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? null : str5);
    }
}
