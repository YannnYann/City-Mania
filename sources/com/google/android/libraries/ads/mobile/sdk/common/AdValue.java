package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdValue {
    public final PrecisionType a;
    public final long b;
    public final String c;

    public AdValue(PrecisionType precisionType, long j, String currencyCode) {
        Intrinsics.checkNotNullParameter(precisionType, "precisionType");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        this.a = precisionType;
        this.b = j;
        this.c = currencyCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdValue)) {
            return false;
        }
        AdValue adValue = (AdValue) obj;
        return this.a == adValue.a && this.b == adValue.b && Intrinsics.areEqual(this.c, adValue.c);
    }

    public int hashCode() {
        return this.c.hashCode() + ((Long.hashCode(this.b) + (this.a.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "AdValue(precisionType=" + this.a + ", valueMicros=" + this.b + ", currencyCode=" + this.c + ")";
    }
}
