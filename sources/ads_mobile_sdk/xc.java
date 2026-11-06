package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.PrecisionType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xc {
    public final zc a;
    public final long b;
    public final PrecisionType c;
    public final String d;

    public xc(zc type, long j, PrecisionType precisionType, String currencyCode) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(precisionType, "precisionType");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        this.a = type;
        this.b = j;
        this.c = precisionType;
        this.d = currencyCode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xc)) {
            return false;
        }
        xc xcVar = (xc) obj;
        return this.a == xcVar.a && this.b == xcVar.b && this.c == xcVar.c && Intrinsics.areEqual(this.d, xcVar.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((Long.hashCode(this.b) + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdValueParcel(type=" + this.a + ", valueMicros=" + this.b + ", precisionType=" + this.c + ", currencyCode=" + this.d + ")";
    }
}
