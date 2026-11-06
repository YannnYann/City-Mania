package com.google.android.libraries.ads.mobile.sdk.internal.common;

import ads_mobile_sdk.ob;
import com.google.gson.JsonObject;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ParentCommonConfig {

    @SerializedName("gws_query_id")
    public final String gwsQueryId;

    @SerializedName("nofill_urls")
    public final List<String> noFillUrls;

    @SerializedName("refresh_interval")
    public final long refreshIntervalInSeconds;

    @SerializedName("response_info_extras")
    public final JsonObject responseInfoExtras;

    public ParentCommonConfig(ArrayList noFillUrls, long j, String gwsQueryId, JsonObject responseInfoExtras) {
        Intrinsics.checkNotNullParameter(noFillUrls, "noFillUrls");
        Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
        Intrinsics.checkNotNullParameter(responseInfoExtras, "responseInfoExtras");
        this.noFillUrls = noFillUrls;
        this.refreshIntervalInSeconds = j;
        this.gwsQueryId = gwsQueryId;
        this.responseInfoExtras = responseInfoExtras;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParentCommonConfig)) {
            return false;
        }
        ParentCommonConfig parentCommonConfig = (ParentCommonConfig) obj;
        return Intrinsics.areEqual(this.noFillUrls, parentCommonConfig.noFillUrls) && this.refreshIntervalInSeconds == parentCommonConfig.refreshIntervalInSeconds && Intrinsics.areEqual(this.gwsQueryId, parentCommonConfig.gwsQueryId) && Intrinsics.areEqual(this.responseInfoExtras, parentCommonConfig.responseInfoExtras);
    }

    public final int hashCode() {
        return this.responseInfoExtras.hashCode() + ob.a(this.gwsQueryId, (Long.hashCode(this.refreshIntervalInSeconds) + (this.noFillUrls.hashCode() * 31)) * 31, 31);
    }

    public final String toString() {
        return "ParentCommonConfig(noFillUrls=" + this.noFillUrls + ", refreshIntervalInSeconds=" + this.refreshIntervalInSeconds + ", gwsQueryId=" + this.gwsQueryId + ", responseInfoExtras=" + this.responseInfoExtras + ")";
    }
}
