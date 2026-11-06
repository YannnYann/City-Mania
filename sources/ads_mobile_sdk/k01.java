package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k01 extends i01 {
    public final int c;
    public final String d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k01)) {
            return false;
        }
        k01 k01Var = (k01) obj;
        return this.c == k01Var.c && Intrinsics.areEqual(this.d, k01Var.d);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.c) * 31;
        String str = this.d;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "HttpError(responseCode=" + this.c + ", responseMessage=" + this.d + ")";
    }

    public final int c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public k01(int i, String str) {
        super(kk1.e, 0);
        this.c = i;
        this.d = str;
    }
}
