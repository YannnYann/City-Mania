package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class om2 {
    public final String a;
    public final j53 b;
    public final String c;

    public om2(String filename, j53 adFormat, String adRequest) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.a = filename;
        this.b = adFormat;
        this.c = adRequest;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof om2)) {
            return false;
        }
        om2 om2Var = (om2) obj;
        return Intrinsics.areEqual(this.a, om2Var.a) && this.b == om2Var.b && Intrinsics.areEqual(this.c, om2Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "PersistentCacheToken(filename=" + this.a + ", adFormat=" + this.b + ", adRequest=" + this.c + ")";
    }
}
