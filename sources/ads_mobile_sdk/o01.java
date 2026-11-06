package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class o01 extends i01 {
    public final String c;
    public final Throwable d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o01)) {
            return false;
        }
        o01 o01Var = (o01) obj;
        return Intrinsics.areEqual(this.c, o01Var.c) && Intrinsics.areEqual(this.d, o01Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.c.hashCode() * 31;
        Throwable th = this.d;
        return iHashCode + (th == null ? 0 : th.hashCode());
    }

    public final String toString() {
        return "NonRetryableNetworkError(message=" + this.c + ", exception=" + this.d + ")";
    }

    public /* synthetic */ o01(String str) {
        this(str, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o01(String message, Throwable th) {
        super(kk1.e, 0);
        Intrinsics.checkNotNullParameter(message, "message");
        this.c = message;
        this.d = th;
    }

    public final String c() {
        return this.c;
    }

    @Override // ads_mobile_sdk.i01
    public final Throwable b() {
        return this.d;
    }
}
