package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m33 {
    public String a;
    public int b;
    public String c;
    public String d;
    public String e;
    public Boolean f;
    public boolean g;
    public boolean h;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m33)) {
            return false;
        }
        m33 m33Var = (m33) obj;
        return Intrinsics.areEqual(this.a, m33Var.a) && this.b == m33Var.b && Intrinsics.areEqual(this.c, m33Var.c) && Intrinsics.areEqual(this.d, m33Var.d) && Intrinsics.areEqual(this.e, m33Var.e) && Intrinsics.areEqual(this.f, m33Var.f) && this.g == m33Var.g && this.h == m33Var.h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v8, types: [int] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iA = ob.a(this.e, ob.a(this.d, ob.a(this.c, y1.a(this.b, this.a.hashCode() * 31, 31), 31), 31), 31);
        Boolean bool = this.f;
        int iHashCode = (iA + (bool == null ? 0 : bool.hashCode())) * 31;
        boolean z = this.g;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iHashCode + r2) * 31;
        boolean z2 = this.h;
        return i + (z2 ? 1 : z2);
    }

    public final String toString() {
        return "RenderTraceMeta(renderId=" + this.a + ", adConfigIndex=" + this.b + ", renderer=" + this.c + ", adapterName=" + this.d + ", adapterVersion=" + this.e + ", winningAd=" + this.f + ", isOfflineAd=" + this.g + ", isAsyncAdResponse=" + this.h + ")";
    }

    public /* synthetic */ m33() {
        this("", 0, "", "", "", null, false, false);
    }

    public m33(String renderId, int i, String renderer, String adapterName, String adapterVersion, Boolean bool, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(renderer, "renderer");
        Intrinsics.checkNotNullParameter(adapterName, "adapterName");
        Intrinsics.checkNotNullParameter(adapterVersion, "adapterVersion");
        this.a = renderId;
        this.b = i;
        this.c = renderer;
        this.d = adapterName;
        this.e = adapterVersion;
        this.f = bool;
        this.g = z;
        this.h = z2;
    }
}
