package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tq0 {
    public final Throwable a;
    public final String b;
    public final ks3 c;
    public final boolean d;
    public final long e;
    public final int f;
    public final boolean g;

    public tq0(Throwable exception, String label, ks3 ks3Var, boolean z, long j, int i, boolean z2) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(label, "label");
        this.a = exception;
        this.b = label;
        this.c = ks3Var;
        this.d = z;
        this.e = j;
        this.f = i;
        this.g = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tq0)) {
            return false;
        }
        tq0 tq0Var = (tq0) obj;
        return Intrinsics.areEqual(this.a, tq0Var.a) && Intrinsics.areEqual(this.b, tq0Var.b) && Intrinsics.areEqual(this.c, tq0Var.c) && this.d == tq0Var.d && this.e == tq0Var.e && this.f == tq0Var.f && this.g == tq0Var.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iA = ob.a(this.b, this.a.hashCode() * 31, 31);
        ks3 ks3Var = this.c;
        int iHashCode = (iA + (ks3Var == null ? 0 : ks3Var.hashCode())) * 31;
        boolean z = this.d;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int iA2 = y1.a(this.f, (Long.hashCode(this.e) + ((iHashCode + r2) * 31)) * 31, 31);
        boolean z2 = this.g;
        return iA2 + (z2 ? 1 : z2);
    }

    public final String toString() {
        return "ExceptionSnapshot(exception=" + this.a + ", label=" + this.b + ", activeTraceMeta=" + this.c + ", trapped=" + this.d + ", timeMilliseconds=" + this.e + ", liveWebViewCount=" + this.f + ", unsampled=" + this.g + ")";
    }
}
