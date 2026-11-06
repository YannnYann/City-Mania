package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class eu {
    public final ct1 a;
    public final mm2 b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eu)) {
            return false;
        }
        eu euVar = (eu) obj;
        return Intrinsics.areEqual(this.a, euVar.a) && this.b == euVar.b;
    }

    public final int hashCode() {
        ct1 ct1Var = this.a;
        int iHashCode = (ct1Var == null ? 0 : ct1Var.hashCode()) * 31;
        mm2 mm2Var = this.b;
        return iHashCode + (mm2Var != null ? mm2Var.hashCode() : 0);
    }

    public final String toString() {
        return "CacheLoadResult(loadedAd=" + this.a + ", missReason=" + this.b + ")";
    }

    public eu(ct1 ct1Var, mm2 mm2Var) {
        this.a = ct1Var;
        this.b = mm2Var;
    }
}
