package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s01 extends i01 {
    public final int c;
    public final String d;
    public final String e;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s01)) {
            return false;
        }
        s01 s01Var = (s01) obj;
        return this.c == s01Var.c && Intrinsics.areEqual(this.d, s01Var.d) && Intrinsics.areEqual(this.e, s01Var.e);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.c) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "WebError(errorCode=" + this.c + ", description=" + this.d + ", failingUrl=" + this.e + ")";
    }

    public final String c() {
        return this.d;
    }

    public final int d() {
        return this.c;
    }

    public final String e() {
        return this.e;
    }

    public s01(int i, String str, String str2) {
        super(kk1.e, 0);
        this.c = i;
        this.d = str;
        this.e = str2;
    }
}
