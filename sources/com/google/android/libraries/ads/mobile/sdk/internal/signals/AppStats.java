package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import ads_mobile_sdk.y1;
import com.google.gson.annotations.SerializedName;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AppStats {

    @SerializedName("consent_form_action_identifier")
    public final int numberOfConsentFormsShown;

    @SerializedName("preqs")
    public final int priorRequestCount;

    @SerializedName("preqs_by_format")
    public final Map<String, Integer> priorRequestCountByFormat;

    @SerializedName("preqs_in_session")
    public final int priorRequestInSessionCount;

    @SerializedName("seq_num")
    public final String sequenceNumber;

    @SerializedName("time_in_session")
    public final long timeInSessionMilliseconds;

    public AppStats(String sequenceNumber, int i, int i2, long j, Map priorRequestCountByFormat, int i3) {
        Intrinsics.checkNotNullParameter(sequenceNumber, "sequenceNumber");
        Intrinsics.checkNotNullParameter(priorRequestCountByFormat, "priorRequestCountByFormat");
        this.sequenceNumber = sequenceNumber;
        this.priorRequestCount = i;
        this.priorRequestInSessionCount = i2;
        this.timeInSessionMilliseconds = j;
        this.priorRequestCountByFormat = priorRequestCountByFormat;
        this.numberOfConsentFormsShown = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppStats)) {
            return false;
        }
        AppStats appStats = (AppStats) obj;
        return Intrinsics.areEqual(this.sequenceNumber, appStats.sequenceNumber) && this.priorRequestCount == appStats.priorRequestCount && this.priorRequestInSessionCount == appStats.priorRequestInSessionCount && this.timeInSessionMilliseconds == appStats.timeInSessionMilliseconds && Intrinsics.areEqual(this.priorRequestCountByFormat, appStats.priorRequestCountByFormat) && this.numberOfConsentFormsShown == appStats.numberOfConsentFormsShown;
    }

    public final int hashCode() {
        return Integer.hashCode(this.numberOfConsentFormsShown) + ((this.priorRequestCountByFormat.hashCode() + ((Long.hashCode(this.timeInSessionMilliseconds) + y1.a(this.priorRequestInSessionCount, y1.a(this.priorRequestCount, this.sequenceNumber.hashCode() * 31, 31), 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AppStats(sequenceNumber=" + this.sequenceNumber + ", priorRequestCount=" + this.priorRequestCount + ", priorRequestInSessionCount=" + this.priorRequestInSessionCount + ", timeInSessionMilliseconds=" + this.timeInSessionMilliseconds + ", priorRequestCountByFormat=" + this.priorRequestCountByFormat + ", numberOfConsentFormsShown=" + this.numberOfConsentFormsShown + ")";
    }
}
