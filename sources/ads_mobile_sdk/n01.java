package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n01 extends i01 {
    public final String c;
    public final boolean d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n01)) {
            return false;
        }
        n01 n01Var = (n01) obj;
        return Intrinsics.areEqual(this.c, n01Var.c) && this.d == n01Var.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final int hashCode() {
        int iHashCode = this.c.hashCode() * 31;
        boolean z = this.d;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public final String toString() {
        return "NoFillError(message=" + this.c + ", isThrottled=" + this.d + ")";
    }

    public /* synthetic */ n01(String str, int i) {
        this((i & 1) != 0 ? ir0.c.d() : str, false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n01(String message, boolean z) {
        super(kk1.c, 0);
        Intrinsics.checkNotNullParameter(message, "message");
        this.c = message;
        this.d = z;
    }

    public final String c() {
        return this.c;
    }
}
