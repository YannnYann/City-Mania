package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class PlayStoreSignals {

    @SerializedName("package_version")
    public String playStoreVersion;

    public PlayStoreSignals() {
        this(0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PlayStoreSignals) && Intrinsics.areEqual(this.playStoreVersion, ((PlayStoreSignals) obj).playStoreVersion);
    }

    public final int hashCode() {
        String str = this.playStoreVersion;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return "PlayStoreSignals(playStoreVersion=" + this.playStoreVersion + ")";
    }

    public PlayStoreSignals(String str) {
        this.playStoreVersion = str;
    }

    public /* synthetic */ PlayStoreSignals(int i) {
        this((String) null);
    }
}
