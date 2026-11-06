package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class j01 extends i01 {
    public final Throwable c;
    public final kk1 d;
    public final String e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j01(Throwable exception, kk1 internalErrorCode, String str) {
        super(internalErrorCode, 0);
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(internalErrorCode, "internalErrorCode");
        this.c = exception;
        this.d = internalErrorCode;
        this.e = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j01)) {
            return false;
        }
        j01 j01Var = (j01) obj;
        return Intrinsics.areEqual(this.c, j01Var.c) && this.d == j01Var.d && Intrinsics.areEqual(this.e, j01Var.e);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + (this.c.hashCode() * 31)) * 31;
        String str = this.e;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "ExceptionError(exception=" + this.c + ", internalErrorCode=" + this.d + ", message=" + this.e + ")";
    }

    public final Throwable c() {
        return this.c;
    }

    @Override // ads_mobile_sdk.i01
    public final kk1 a() {
        return this.d;
    }

    public final String d() {
        return this.e;
    }

    @Override // ads_mobile_sdk.i01
    public final Throwable b() {
        return this.c;
    }

    public /* synthetic */ j01(Throwable th, kk1 kk1Var, String str, int i) {
        this(th, (i & 2) != 0 ? kk1.a : kk1Var, (i & 4) != 0 ? null : str);
    }
}
