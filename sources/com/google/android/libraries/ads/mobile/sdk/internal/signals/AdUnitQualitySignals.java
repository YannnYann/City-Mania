package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdUnitQualitySignals {

    @SerializedName("dload")
    public final Long loadDuration;

    @SerializedName("pcc")
    public final Integer priorClickCount;

    public AdUnitQualitySignals(Integer num, Long l) {
        this.priorClickCount = num;
        this.loadDuration = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdUnitQualitySignals)) {
            return false;
        }
        AdUnitQualitySignals adUnitQualitySignals = (AdUnitQualitySignals) obj;
        return Intrinsics.areEqual(this.priorClickCount, adUnitQualitySignals.priorClickCount) && Intrinsics.areEqual(this.loadDuration, adUnitQualitySignals.loadDuration);
    }

    public final int hashCode() {
        Integer num = this.priorClickCount;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Long l = this.loadDuration;
        return iHashCode + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "AdUnitQualitySignals(priorClickCount=" + this.priorClickCount + ", loadDuration=" + this.loadDuration + ")";
    }
}
