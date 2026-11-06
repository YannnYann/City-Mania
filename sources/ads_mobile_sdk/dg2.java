package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dg2 {
    public final cg2 a;
    public final xh2 b;
    public final boolean c;
    public final String d;
    public final String e;

    public dg2(cg2 mediaType, xh2 videoEventsOwner, boolean z, String omidPartnerName, String omidHtml) {
        Intrinsics.checkNotNullParameter(mediaType, "mediaType");
        Intrinsics.checkNotNullParameter(videoEventsOwner, "videoEventsOwner");
        Intrinsics.checkNotNullParameter(omidPartnerName, "omidPartnerName");
        Intrinsics.checkNotNullParameter(omidHtml, "omidHtml");
        this.a = mediaType;
        this.b = videoEventsOwner;
        this.c = z;
        this.d = omidPartnerName;
        this.e = omidHtml;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dg2)) {
            return false;
        }
        dg2 dg2Var = (dg2) obj;
        return this.a == dg2Var.a && this.b == dg2Var.b && this.c == dg2Var.c && Intrinsics.areEqual(this.d, dg2Var.d) && Intrinsics.areEqual(this.e, dg2Var.e);
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
        return this.e.hashCode() + ob.a(this.d, (iHashCode + r0) * 31, 31);
    }

    public final String toString() {
        return "OmidSettings(mediaType=" + this.a + ", videoEventsOwner=" + this.b + ", javascriptSessionServiceEnabled=" + this.c + ", omidPartnerName=" + this.d + ", omidHtml=" + this.e + ")";
    }
}
