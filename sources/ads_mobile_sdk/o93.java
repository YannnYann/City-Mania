package ads_mobile_sdk;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o93 {
    public final String a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final List e;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o93)) {
            return false;
        }
        o93 o93Var = (o93) obj;
        return Intrinsics.areEqual(this.a, o93Var.a) && Intrinsics.areEqual(this.b, o93Var.b) && this.c == o93Var.c && this.d == o93Var.d && Intrinsics.areEqual(this.e, o93Var.e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iA = ob.a(this.b, this.a.hashCode() * 31, 31);
        boolean z = this.c;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iA + r2) * 31;
        boolean z2 = this.d;
        return this.e.hashCode() + ((i + (z2 ? 1 : z2)) * 31);
    }

    public final String toString() {
        return "SafeBrowsingConfig(clickString=" + this.a + ", reportUrl=" + this.b + ", nonMaliciousReportingEnabled=" + this.c + ", autoClickProtectionEnabled=" + this.d + ", allowedHeaders=" + this.e + ")";
    }

    public /* synthetic */ o93() {
        this("", "", false, false, CollectionsKt__CollectionsKt.emptyList());
    }

    public o93(String clickString, String reportUrl, boolean z, boolean z2, List allowedHeaders) {
        Intrinsics.checkNotNullParameter(clickString, "clickString");
        Intrinsics.checkNotNullParameter(reportUrl, "reportUrl");
        Intrinsics.checkNotNullParameter(allowedHeaders, "allowedHeaders");
        this.a = clickString;
        this.b = reportUrl;
        this.c = z;
        this.d = z2;
        this.e = allowedHeaders;
    }
}
