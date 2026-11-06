package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tn1 {
    public String a;
    public String b;
    public int c;
    public x11 d;
    public int e;
    public nm2 f;
    public boolean g;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tn1)) {
            return false;
        }
        tn1 tn1Var = (tn1) obj;
        return Intrinsics.areEqual(this.a, tn1Var.a) && Intrinsics.areEqual(this.b, tn1Var.b) && this.c == tn1Var.c && this.d == tn1Var.d && this.e == tn1Var.e && Intrinsics.areEqual(this.f, tn1Var.f) && this.g == tn1Var.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    public final int hashCode() {
        int iA = y1.a(this.e, (this.d.hashCode() + y1.a(this.c, ob.a(this.b, this.a.hashCode() * 31, 31), 31)) * 31, 31);
        nm2 nm2Var = this.f;
        int iHashCode = (iA + (nm2Var == null ? 0 : nm2Var.hashCode())) * 31;
        boolean z = this.g;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public final String toString() {
        return "InternalRequestTraceMeta(internalRequestId=" + this.a + ", gwsQueryId=" + this.b + ", sequenceNumber=" + this.c + ", scarRequestType=" + this.d + ", mediationChainLength=" + this.e + ", persistentCacheRequestData=" + this.f + ", isHtmlAdResponse=" + this.g + ")";
    }

    public /* synthetic */ tn1() {
        this("", "", 0, x11.SCAR_REQUEST_TYPE_UNSPECIFIED, 0, null, false);
    }

    public tn1(String internalRequestId, String gwsQueryId, int i, x11 scarRequestType, int i2, nm2 nm2Var, boolean z) {
        Intrinsics.checkNotNullParameter(internalRequestId, "internalRequestId");
        Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
        Intrinsics.checkNotNullParameter(scarRequestType, "scarRequestType");
        this.a = internalRequestId;
        this.b = gwsQueryId;
        this.c = i;
        this.d = scarRequestType;
        this.e = i2;
        this.f = nm2Var;
        this.g = z;
    }
}
