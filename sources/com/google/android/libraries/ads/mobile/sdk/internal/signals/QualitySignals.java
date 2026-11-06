package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class QualitySignals {

    @SerializedName("app")
    public final AppStats appStats;

    public QualitySignals(AppStats appStats) {
        Intrinsics.checkNotNullParameter(appStats, "appStats");
        this.appStats = appStats;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof QualitySignals) && Intrinsics.areEqual(this.appStats, ((QualitySignals) obj).appStats);
    }

    public final int hashCode() {
        return this.appStats.hashCode();
    }

    public final String toString() {
        return "QualitySignals(appStats=" + this.appStats + ")";
    }
}
