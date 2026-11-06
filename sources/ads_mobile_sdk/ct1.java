package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ct1 {
    public final String a;
    public final om2 b;
    public final boolean c;
    public final long d;

    public ct1(String ad, om2 token, boolean z, long j) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(token, "token");
        this.a = ad;
        this.b = token;
        this.c = z;
        this.d = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ct1)) {
            return false;
        }
        ct1 ct1Var = (ct1) obj;
        return Intrinsics.areEqual(this.a, ct1Var.a) && Intrinsics.areEqual(this.b, ct1Var.b) && this.c == ct1Var.c && this.d == ct1Var.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        boolean z = this.c;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return Long.hashCode(this.d) + ((iHashCode + r0) * 31);
    }

    public final String toString() {
        return "LoadedAd(ad=" + this.a + ", token=" + this.b + ", isFromPreviousSession=" + this.c + ", timeInCacheMs=" + this.d + ")";
    }
}
