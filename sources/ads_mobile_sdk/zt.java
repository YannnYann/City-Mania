package ads_mobile_sdk;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zt {
    public static final yt j = new yt();
    public final List a;
    public final String b;
    public final String c;
    public final boolean d;
    public final String e;
    public String f;
    public final List g;
    public final boolean h;
    public final String i;

    public zt(List list, String str, String str2, boolean z, String url, String str3, List list2, boolean z2, String str4) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a = list;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = url;
        this.f = str3;
        this.g = list2;
        this.h = z2;
        this.i = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zt)) {
            return false;
        }
        zt ztVar = (zt) obj;
        return Intrinsics.areEqual(this.a, ztVar.a) && Intrinsics.areEqual(this.b, ztVar.b) && Intrinsics.areEqual(this.c, ztVar.c) && this.d == ztVar.d && Intrinsics.areEqual(this.e, ztVar.e) && Intrinsics.areEqual(this.f, ztVar.f) && Intrinsics.areEqual(this.g, ztVar.g) && this.h == ztVar.h && Intrinsics.areEqual(this.i, ztVar.i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v7, types: [int] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [int] */
    /* JADX WARN: Type inference failed for: r4v2 */
    public final int hashCode() {
        List list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        boolean z = this.d;
        ?? r3 = z;
        if (z) {
            r3 = 1;
        }
        int iA = ob.a(this.e, (iHashCode3 + r3) * 31, 31);
        String str3 = this.f;
        int iHashCode4 = (iA + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list2 = this.g;
        int iHashCode5 = (iHashCode4 + (list2 == null ? 0 : list2.hashCode())) * 31;
        boolean z2 = this.h;
        int i = (iHashCode5 + (z2 ? 1 : z2)) * 31;
        String str4 = this.i;
        return i + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return "BuildAdUrlResult(errors=" + this.a + ", baseUri=" + this.b + ", postParameters=" + this.c + ", includeCookies=" + this.d + ", url=" + this.e + ", queryWithFlattenedBlobParams=" + this.f + ", csrbErrors=" + this.g + ", useCompression=" + this.h + ", contentType=" + this.i + ")";
    }
}
