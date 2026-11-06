package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qb2 {
    public final pb2 a;
    public final pb2 b;
    public final boolean c;

    public qb2(pb2 impressionPrerequisite, pb2 clickPrerequisite, boolean z) {
        Intrinsics.checkNotNullParameter(impressionPrerequisite, "impressionPrerequisite");
        Intrinsics.checkNotNullParameter(clickPrerequisite, "clickPrerequisite");
        this.a = impressionPrerequisite;
        this.b = clickPrerequisite;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qb2)) {
            return false;
        }
        qb2 qb2Var = (qb2) obj;
        return this.a == qb2Var.a && this.b == qb2Var.b && this.c == qb2Var.c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        boolean z = this.c;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return iHashCode + r0;
    }

    public final String toString() {
        return "OfflineAdConfig(impressionPrerequisite=" + this.a + ", clickPrerequisite=" + this.b + ", notificationFlowEnabled=" + this.c + ")";
    }
}
