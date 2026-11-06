package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zb {
    public boolean a;
    public String b;
    public String c;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zb)) {
            return false;
        }
        zb zbVar = (zb) obj;
        return this.a == zbVar.a && Intrinsics.areEqual(this.b, zbVar.b) && Intrinsics.areEqual(this.c, zbVar.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public final int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return this.c.hashCode() + ob.a(this.b, r0 * 31, 31);
    }

    public final String toString() {
        return "AdTraceMeta(impressionEarned=" + this.a + ", adTraceId=" + this.b + ", backendQueryId=" + this.c + ")";
    }

    public /* synthetic */ zb() {
        this(false, "", "");
    }

    public zb(boolean z, String adTraceId, String backendQueryId) {
        Intrinsics.checkNotNullParameter(adTraceId, "adTraceId");
        Intrinsics.checkNotNullParameter(backendQueryId, "backendQueryId");
        this.a = z;
        this.b = adTraceId;
        this.c = backendQueryId;
    }
}
