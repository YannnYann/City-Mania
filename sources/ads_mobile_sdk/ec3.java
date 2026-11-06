package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ec3 {
    public final wb3 a;
    public final ac3 b;
    public final boolean c;
    public final om2 d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ec3)) {
            return false;
        }
        ec3 ec3Var = (ec3) obj;
        return Intrinsics.areEqual(this.a, ec3Var.a) && Intrinsics.areEqual(this.b, ec3Var.b) && this.c == ec3Var.c && Intrinsics.areEqual(this.d, ec3Var.d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.a.hashCode() * 31)) * 31;
        boolean z = this.c;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = (iHashCode + r0) * 31;
        om2 om2Var = this.d;
        return i + (om2Var == null ? 0 : om2Var.hashCode());
    }

    public final String toString() {
        return "ServerTransaction(serverRequest=" + this.a + ", serverResponse=" + this.b + ", isFromPersistentCache=" + this.c + ", persistentCacheToken=" + this.d + ")";
    }

    public /* synthetic */ ec3(wb3 wb3Var, ac3 ac3Var) {
        this(wb3Var, ac3Var, false, null);
    }

    public ec3(wb3 serverRequest, ac3 serverResponse, boolean z, om2 om2Var) {
        Intrinsics.checkNotNullParameter(serverRequest, "serverRequest");
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        this.a = serverRequest;
        this.b = serverResponse;
        this.c = z;
        this.d = om2Var;
    }
}
