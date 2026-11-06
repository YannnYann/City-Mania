package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i92 {
    public boolean a;
    public final boolean b;
    public final boolean c;
    public long d;
    public final String e;
    public ey3 f;

    /* JADX WARN: Removed duplicated region for block: B:10:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.gson.JsonObject a(android.content.Context r9, java.lang.String r10, java.lang.String r11, ads_mobile_sdk.km r12) {
        /*
            Method dump skipped, instruction units count: 582
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.i92.a(android.content.Context, java.lang.String, java.lang.String, ads_mobile_sdk.km):com.google.gson.JsonObject");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i92)) {
            return false;
        }
        i92 i92Var = (i92) obj;
        return this.a == i92Var.a && this.b == i92Var.b && this.c == i92Var.c && this.d == i92Var.d && Intrinsics.areEqual(this.e, i92Var.e) && Intrinsics.areEqual(this.f, i92Var.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    public final int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.b;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.c;
        int iHashCode = (Long.hashCode(this.d) + ((i2 + (z3 ? 1 : z3)) * 31)) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        ey3 ey3Var = this.f;
        return iHashCode2 + (ey3Var != null ? ey3Var.hashCode() : 0);
    }

    public final String toString() {
        return "NativeVideoViewabilityState(isVisible=" + this.a + ", isPaused=" + this.b + ", isStopped=" + this.c + ", timestamp=" + this.d + ", doneReason=" + this.e + ", viewabilityEvent=" + this.f + ")";
    }

    public /* synthetic */ i92() {
        this(false, false, false, 0L, null, null);
    }

    public i92(boolean z, boolean z2, boolean z3, long j, String str, ey3 ey3Var) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = j;
        this.e = str;
        this.f = ey3Var;
    }
}
