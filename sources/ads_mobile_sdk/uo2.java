package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uo2 {
    public final boolean a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final String e;
    public final int f;
    public final String g;
    public final Map h;

    public uo2(boolean z, String prefetchUrl, boolean z2, boolean z3, String hsdpServiceTargetAppPackageName, int i, String hsdpServiceReferrer, Map hsdpServiceExtraQueryParams) {
        Intrinsics.checkNotNullParameter(prefetchUrl, "prefetchUrl");
        Intrinsics.checkNotNullParameter(hsdpServiceTargetAppPackageName, "hsdpServiceTargetAppPackageName");
        Intrinsics.checkNotNullParameter(hsdpServiceReferrer, "hsdpServiceReferrer");
        Intrinsics.checkNotNullParameter(hsdpServiceExtraQueryParams, "hsdpServiceExtraQueryParams");
        this.a = z;
        this.b = prefetchUrl;
        this.c = z2;
        this.d = z3;
        this.e = hsdpServiceTargetAppPackageName;
        this.f = i;
        this.g = hsdpServiceReferrer;
        this.h = hsdpServiceExtraQueryParams;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uo2)) {
            return false;
        }
        uo2 uo2Var = (uo2) obj;
        return this.a == uo2Var.a && Intrinsics.areEqual(this.b, uo2Var.b) && this.c == uo2Var.c && this.d == uo2Var.d && Intrinsics.areEqual(this.e, uo2Var.e) && this.f == uo2Var.f && Intrinsics.areEqual(this.g, uo2Var.g) && Intrinsics.areEqual(this.h, uo2Var.h);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    public final int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int iA = ob.a(this.b, r0 * 31, 31);
        boolean z2 = this.c;
        ?? r3 = z2;
        if (z2) {
            r3 = 1;
        }
        int i = (iA + r3) * 31;
        boolean z3 = this.d;
        return this.h.hashCode() + ob.a(this.g, y1.a(this.f, ob.a(this.e, (i + (z3 ? 1 : z3)) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "PlayPrewarmOptions(enablePrewarming=" + this.a + ", prefetchUrl=" + this.b + ", skipOfflineNotificationFlow=" + this.c + ", enableHsdpService=" + this.d + ", hsdpServiceTargetAppPackageName=" + this.e + ", hsdpInvocationCallbackBitmask=" + this.f + ", hsdpServiceReferrer=" + this.g + ", hsdpServiceExtraQueryParams=" + this.h + ")";
    }
}
